// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,


      ),
      backgroundColor: context.theme.cardColor,  
      bottomNavigationBar: Container(
        color: context.theme.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(context.theme.focusColor)
                    
                    ),
                    child: "Add to Cart".text.color(Colors.white).make()).wh(150,50)
                ],
              ).p32(),
      ),
      body: SafeArea(
          bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.image.toString()),
              child: Image.network(catalog.image)
              ),
              Expanded(
                child: VxArc(
                  height: 20,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    color: context.theme.cardColor,
                    width: context.screenWidth,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [ 
                             catalog.name.text.xl4.bold.color(context.theme.highlightColor).make(),
                              catalog.desc.text.textStyle(context.captionStyle).make(),
                              HeightBox(10),
                              "Diam sed dolores sit takimata dolores duo. Duo takimata no justo invidunt sit labore eirmod consetetur, sit no takimata dolores dolor eirmod no ipsum nonumy. Consetetur diam dolor lorem dolor sanctus stet. Accusam ut diam magna aliquyam stet, justo at voluptua elitr no et et sea eirmod sea. Amet ipsum."
                              .text.textStyle(context.captionStyle)
                              .make()
                              .p16()
                          ],
                        ).py64(),
                      ),
                  ),
                ))
              ],
        ),
      ),
    );
  }
}

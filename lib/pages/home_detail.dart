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
      appBar: AppBar(),
      backgroundColor: Mytheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.black)
                    
                    ),
                    child: "Buy".text.color(Colors.white).make()).wh(100,50)
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
                    color: Colors.white,
                    width: context.screenWidth,
                      child: Column(
                        children: [ 
                           catalog.name.text.xl4.bold.color(Mytheme.darkbluishColor).make(),
                            catalog.desc.text.textStyle(context.captionStyle).make(),
                        ],
                      ).py64(),
                  ),
                ))
              ],
        ),
      ),
    );
  }
}

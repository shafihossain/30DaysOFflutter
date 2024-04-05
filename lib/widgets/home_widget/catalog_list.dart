// ignore_for_file: unused_import, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/pages/home_detail.dart';
import 'package:flutter_application_2/widgets/home_widget/catalog_image.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: catalogs.Products.length,
        itemBuilder: (context, index) {
          final catalog = catalogs.Products[index];
          return InkWell(
            onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage(catalog: catalog), 
            ),
            ) ,
            child: catalogitem(catalog: catalog));
        });
  }
}

class catalogitem extends StatelessWidget {
  final Item catalog;

  const catalogitem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.image.toString()),
          child: catalogimage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold.color(Mytheme.darkbluishColor).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}".text.bold.make(),
                ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black)
                  
                  ),
                  child: "Buy".text.color(Colors.white).make())
              ],
            ).pOnly(right: 8)
          ],
        ))
      ],
    )).white.roundedLg.square(120).make().py8();
  }
}

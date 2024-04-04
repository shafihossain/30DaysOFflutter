// ignore_for_file: unused_import, empty_statements, dead_code, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, sized_box_for_whitespace, body_might_complete_normally_nullable, duplicate_import, prefer_const_constructors_in_immutables, unused_local_variable, avoid_print, non_constant_identifier_names, avoid_types_as_parameter_names, unnecessary_null_comparison, unrelated_type_equality_checks, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, empty_constructor_bodies, camel_case_types

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/item_widget.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int days = 30;
  String name = "Shafi";

  @override
  void initState() {
    super.initState();

    LoadData();
  }

  LoadData() async {
    await Future.delayed(Duration(seconds: 2));
    final productsjson =
        await rootBundle.loadString("assets/files/products.json");
    final decodedata = jsonDecode(productsjson);
    var productsData = decodedata["products"];
    catalogs.Products = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Mytheme.creamColor,
        body: SafeArea(
          child: Container(
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CatalogHeader(),
                  if (catalogs.Products != null && catalogs.Products.isNotEmpty)
                    CatalogList().expand()
                  else
                    Center(
                      child: CircularProgressIndicator(),
                    )
                ],
              )),
        ));
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      "Catalog App".text.xl4.bold.color(Colors.black).make(),
      "Trending Products".text.xl2.bold.color(Colors.black38).make()
    ]);
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: catalogs.Products.length,
      itemBuilder: (context, index) {
        final catalog = catalogs.Products[index];
        return catalogitem(catalog: catalog);
      },
    );
  }
}

class catalogitem extends StatelessWidget {
  final Item catalog;

  const catalogitem({Key? key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image,),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.bold.color(Mytheme.darkbluishColor).make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mH8,
              children: [ 
                "\$${catalog.price}".text.bold.make(),
                ElevatedButton(onPressed: (){},
                style: ButtonStyle(
                ), 
                child: "Buy".text.bold.make())
                
              ],
            )
          ],
        ))

      ],
    )).white.roundedLg.p12.square(150).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(Mytheme.creamColor)
        .make()
        .w40(context);
  }
}

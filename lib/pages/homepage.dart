// ignore_for_file: unused_import, empty_statements, dead_code, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, sized_box_for_whitespace, body_might_complete_normally_nullable, duplicate_import, prefer_const_constructors_in_immutables, unused_local_variable, avoid_print, non_constant_identifier_names, avoid_types_as_parameter_names, unnecessary_null_comparison, unrelated_type_equality_checks, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, empty_constructor_bodies, camel_case_types, unnecessary_import

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/utlites/approutes.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/home_widget/catalog_list.dart';
import 'package:flutter_application_2/widgets/item_widget.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widget/catalog_header.dart';

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
      floatingActionButton: FloatingActionButton(onPressed: ()=>
      Navigator.pushNamed(context, MyRoutes.CartRouter),
      child: Icon(CupertinoIcons.cart),
      
      
      ),
  
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
          child: Container(
            padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          CatalogHeader(),
          if (catalogs.Products != null && catalogs.Products.isNotEmpty)
            CatalogList().py16().expand()
          else
            CircularProgressIndicator().centered().expand()
        ]),
      )),
    );
  }
}

// ignore_for_file: unused_import, empty_statements, dead_code, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, sized_box_for_whitespace, body_might_complete_normally_nullable, duplicate_import, prefer_const_constructors_in_immutables, unused_local_variable, avoid_print, non_constant_identifier_names, avoid_types_as_parameter_names, unnecessary_null_comparison, unrelated_type_equality_checks, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/models/catelog.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import 'package:flutter_application_2/widgets/item_widget.dart';
import 'dart:convert';

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
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        drawer: Mydrawer(),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: (catalogs.Products != null && catalogs.Products.isNotEmpty)
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10
                        ),
                    itemBuilder: (context, index) {
                      final Item = catalogs.Products[index];
                      return Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: GridTile(child: Image.network(Item.image),
                        header: Container(
                          child: Text(Item.name, style: TextStyle(color: Colors.white),),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue
                          ),
                          ),
                          
                        footer: Container(
                          child: Text(Item.price.toString(),style: TextStyle(color: Colors.white),),
                          decoration: BoxDecoration(
                            color: Colors.black
                          ),
                          ),
                        )
                        
                        );
                        
                    },
                    itemCount: catalogs.Products.length,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )));
  }
}

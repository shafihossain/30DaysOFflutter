// ignore_for_file: unused_import, empty_statements, dead_code, avoid_unnecessary_containers, prefer_const_constructors, must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  int days = 30;
  String name = "Shafi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueAccent,
        title: Text("UberX By Shafi"),
        //elevation: 10,
        
      ),
      drawer: Mydrawer(),
      body: Center(
        child: Text("Welcome to $days days of flutter by $name"),

      ),
       
        
      
      );
  }
}

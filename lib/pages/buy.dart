// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, camel_case_types, unused_element, unnecessary_import, unused_local_variable, empty_statements, dead_code

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/utlites/approutes.dart';
import 'package:flutter_application_2/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class Buy extends StatefulWidget {
  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {

    final formkey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            children: [
              "Information".text.xl4.bold.make(),
              "Add your Information".text.xl2.make(),
              50.heightBox,
              Expanded(
                  child: Form(
                key: formkey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Your Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                      validator: (value) {
                        if (value!.isEmpty) ;

                        return "Name is Required";

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Your Address",
                          labelText: "Address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              labelText: "Phone Number",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Email Address",
                                  hintText: "Mail",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20))),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Optional Notes",
                                      hintText: "Note",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      labelText: "Mention Product Color",
                                      hintText: "Colour",
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20))),
                                )
                              ],
                            ))
                          ],
                        ))
                      ],
                    ))
                  ],
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  "\$9900".text.color(context.theme.focusColor).xl4.make(),
                  30.widthBox,
                  ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar( 
                          SnackBar(content: "Buying is not supported yet".text.make())
                        );
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              context.theme.focusColor)),
                      child: "Buy".text.color(Colors.white).xl2.bold.make())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

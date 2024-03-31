// ignore_for_file: camel_case_types, prefer_const_constructors, avoid_web_libraries_in_flutter, unused_import, sort_child_properties_last, avoid_unnecessary_containers, use_build_context_synchronously, must_be_immutable, prefer_const_constructors_in_immutables, unnecessary_import, unused_field, dead_code, empty_statements
//import 'dart:html';

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/pages/homepage.dart';
import 'package:flutter_application_2/utlites/approutes.dart';
import 'package:google_fonts/google_fonts.dart';

class createaccount extends StatefulWidget {
  createaccount({super.key});

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  String name = "";
  bool changebutton = false;

  final formkey = GlobalKey<FormState>();
  moveTohome(BuildContext context) async {
    if (formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homepage);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Image.asset(
                  "assets/imgs/create.img.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Create an Account,$name",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.lato().fontFamily),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: ('Enter Username'),
                          labelText: ("Username")),
                      validator: (value) {
                        if (value!.isEmpty) ;
                        return "Username cannot be empty";

                        return null;
                      },
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            hintText: ("Your Name"), labelText: ("Name")),
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        }),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: ("Your Number"), labelText: ("Number")),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: ("Enter your address"),
                          labelText: ("Address")),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: ("Enter Your Password"),
                        labelText: ("Password"),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: ("Confrim Your Password"),
                        labelText: ("Password"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 20 : 8),
                      child: InkWell(
                        splashColor: Colors.deepOrange,
                        onTap: () async => moveTohome,
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 40,
                          alignment: Alignment.center,
                          child: changebutton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Create an Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                          //decoration: BoxDecoration(
                          //color: Colors.blue,
                          // shape:
                          //     changebutton ? BoxShape.circle : BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ]
                      // ElevatedButton(
                      //   child: Text(
                      //     "Create Account",
                      //     style: TextStyle(color: Colors.white),
                      //   ),
                      //   style: TextButton.styleFrom(
                      //       backgroundColor: Colors.purpleAccent),
                      //   onPressed: () =>
                      //       {Navigator.pushNamed(context, MyRoutes.homepage)},
                      // )

                      ),
                ),
              ],
            ),
          ),
        ));
  }
}

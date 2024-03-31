// ignore_for_file: unused_import, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_print, sized_box_for_whitespace, use_build_context_synchronously, non_constant_identifier_names, body_might_complete_normally_nullable, curly_braces_in_flow_control_structures, avoid_web_libraries_in_flutter, prefer_const_constructors_in_immutables

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/homepage.dart';
import 'package:flutter_application_2/utlites/approutes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;

  final final_formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (final_formkey.currentState!.validate()) {
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
          key: final_formkey,
          child: Column(children: [
            Image.asset(
              "assets/imgs/hey.png",
              fit: BoxFit.cover,
              height: 300,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Welcome,$name",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter UserName", labelText: "Username"),
                  validator: (value) {
                    if (value!.isEmpty) return "Username cannot be empty";
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                  validator: (value) {
                    if (value!.isEmpty) return "Please Enter Password";

                    if (value.length < 8)
                      return "Password should be atleast 8 character";

                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(changebutton ? 20 : 8),
                  child: InkWell(
                    splashColor: Colors.red,
                    onTap: () => moveTohome(context),
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
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      //decoration: BoxDecoration(
                      //color: Colors.blue,
                      // shape:
                      //     changebutton ? BoxShape.circle : BoxShape.rectangle,
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}

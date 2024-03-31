// ignore_for_file: unused_import, prefer_const_constructors, unnecessary_string_escapes, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/createaccount.dart';
import 'package:flutter_application_2/pages/homepage.dart';
import 'package:flutter_application_2/pages/loginpage.dart';
import 'package:flutter_application_2/utlites/approutes.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/imgs/login_page.png",
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: 20,
          ),
          Text("Welcome to our app",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          ),
          Text("Developed By Shafi",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text(
              "Create an Account",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(backgroundColor: Colors.purpleAccent),
            onPressed: () => {Navigator.pushNamed(context, MyRoutes.createAc)},
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
            child: Column(
              children: [
                ElevatedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purpleAccent),
                  onPressed: () =>
                      {Navigator.pushNamed(context, MyRoutes.loginroute)},
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

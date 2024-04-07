// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_application_2/pages/buy.dart';
import 'package:flutter_application_2/pages/cartpage.dart';
import 'package:flutter_application_2/pages/createaccount.dart';
import 'package:flutter_application_2/pages/homepage.dart';
import 'package:flutter_application_2/pages/loginpage.dart';
import 'package:flutter_application_2/pages/splashscreen.dart';
import 'package:flutter_application_2/utlites/approutes.dart';
import 'package:flutter_application_2/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Mytheme.lightheme(context),
      darkTheme: Mytheme.darktheme(context),
      initialRoute: MyRoutes.homepage,
      routes: {
        "/": (context) => Splashscreen(),
        MyRoutes.homepage: (context) => Homepage(),
        MyRoutes.loginroute: (context) => LoginPage(),
        MyRoutes.createAc: (context) => createaccount(),
        MyRoutes.CartRouter: (context) => CartPage(),
        MyRoutes.Buy: (context) => Buy()
      },
    );
  }
}

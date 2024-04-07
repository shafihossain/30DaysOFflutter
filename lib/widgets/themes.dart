// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightheme(BuildContext context) => ThemeData(
      cardColor: Colors.white,
      canvasColor: creamColor,
      focusColor: darkbluishColor,
      highlightColor: darkbluishColor,
       hintColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textTheme: Theme.of(context).textTheme);
  static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        cardColor: Colors.black,
        canvasColor: DarkcreamColor,
        focusColor: Lightdarkbluesh,
        highlightColor: Colors.white,
        hintColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      );

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color DarkcreamColor = Vx.gray900;
  static Color darkbluishColor = Color(0xff403b58);
  static Color Lightdarkbluesh = Vx.indigo400;
}

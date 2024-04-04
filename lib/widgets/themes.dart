// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textTheme: Theme.of(context).textTheme);
  static ThemeData darktheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkbluishColor = Color(0xff403b58);
}

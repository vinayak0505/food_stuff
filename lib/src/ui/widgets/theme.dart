import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        indicatorColor: Colors.white70,
        brightness: Brightness.light,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: Colors.white10,
        indicatorColor: Colors.white70,
        brightness: Brightness.dark,
      );
}

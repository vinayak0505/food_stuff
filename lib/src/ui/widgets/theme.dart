import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        scaffoldBackgroundColor: scaffoldColor,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.deepPurple,
            shadowColor: Colors.transparent),
        cardColor: textFieldColor,
        // canvasColor: textFieldColor,
        brightness: Brightness.light,
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        scaffoldBackgroundColor: scaffoldColorDarkTheme,
        canvasColor: textFieldColorDarkTheme,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            shadowColor: Colors.transparent),
        cardColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: bottomNavigationDarkTheme,
          type: BottomNavigationBarType.shifting,
          elevation: 8,
          selectedItemColor: scaffoldColor,
          unselectedItemColor: Colors.grey[600],
          showUnselectedLabels: false,
        ),
        brightness: Brightness.dark,
      );
}

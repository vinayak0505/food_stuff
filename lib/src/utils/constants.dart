import 'package:flutter/material.dart';

/// Image
// to be removed

final List<String> popularSearchList = [
      'breakfast',
      'lunch',
      'dinner',
      'hotdog',
      'sandwitch',
      'burger',
      'chicken',
      'soup',
      'dessert',
      'drink',
      'snacks',
      'chocolate',
    ];

/// Screen configuration

double kScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double kScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

/// Constant Values

const kRoundedRectangleRadius = 8.0;
const kImageSize = 170.0;

/// Colors

// Light Theme

const scaffoldColor = Color(0xfff7eeff);
const darkCreamColor = Color(0xffd9d9d9);
const bottomNavigation = Color(0xFF3E3E49);
const textFieldColor = Color(0xffffffff);

// Dark Theme

const textFieldColorDarkTheme = Color(0xff362e3e);
const bottomNavigationDarkTheme = Color(0xFF1A1A1F); //Bottom Navigation
const scaffoldColorDarkTheme = Color(0xFF363636);

/// Text Style

const kPointerStyle = TextStyle(fontSize: 14.0);

const kTitleFontsStyle = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
const kTabletTitleFontsStyle = TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold);
const kDesktopTitleFontsStyle = TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold);
const kSubtitleFontStyle =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600);
const kFoodNameFontStyle =
    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600);
const kCategoryUnselectedStyle =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400);
const kCategorySelectedStyle =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600);
const kTextButtonStyle = TextStyle(color: Colors.deepPurpleAccent);


/// Text Field Style

const kTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  // focusedBorder: InputBorder.none,
  hintText: 'Enter a value',
  hintStyle: TextStyle(fontSize: 20),
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(20.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  fillColor: darkCreamColor,
  filled: true,
);

/// Breakpoints

const kTabletBreakpoint = 768.0;
const kDesktopBreakpoint = 1440.0;
const kSideMenuWidth = 300.0;
const kNavigationRailWidth = 72.0;

import 'package:flutter/material.dart';

double kScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double kScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

const creamColor = Color(0xfff5f5f5);
const darkCreamColor = Color(0xffd9d9d9);
const darkBluishColor = Color(0xff403b58);

const kTitleFontsStyle = TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold);

const kCategoryUnselected =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400);
const kCategorySelected =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600);

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);

const kTextFieldDecoration = InputDecoration(
  border: InputBorder.none,
  hintText: 'Enter a value',
  hintStyle: TextStyle(fontSize: 20),
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: creamColor,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: creamColor, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  fillColor: darkCreamColor,
  filled: true,
);

const kRoundedRectangleRadius = 16.0;

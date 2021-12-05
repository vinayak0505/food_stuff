import 'package:flutter/material.dart';

/// Image
// to be removed

const List foodImageList = [
  'https://media.smallbiztrends.com/2021/05/fast-food-restaurants.png',
  'https://www.qsrmagazine.com/sites/default/files/styles/slideshow_image/public/slideshow-images/slides/mcdonaldsglobal.jpg?itok=X8uup3iY',
  'https://st.depositphotos.com/1005682/2476/i/600/depositphotos_24762569-stock-photo-fast-food-hamburger-hot-dog.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/7/7a/Domino%27s_Pizza_-_20191105.jpg',
  'https://res.cloudinary.com/swiggy/image/upload/f_auto,q_auto,fl_lossy/pjyrruezbzofdtomlzpi',
];
const String image = 'https://en.pimg.jp/062/142/310/1/62142310.jpg';
const String smileyImage =
    'https://media.istockphoto.com/vectors/emoji-smiley-with-medical-doctor-mask-and-thumbs-up-vector-symbol-vector-id1227454658?k=20&m=1227454658&s=612x612&w=0&h=ilUr8lw_5PVlkDXn-e3nqBPm--Wsylv8GTKmcAk-xjY=';

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

const kTitleFontsStyle = TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold);
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
  hintText: 'Enter a value',
  hintStyle: TextStyle(fontSize: 20),
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: scaffoldColor,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: scaffoldColor, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  fillColor: darkCreamColor,
  filled: true,
);

/// Breakpoints

const kTabletBreakpoint = 768.0;
const kDesktopBreakpoint = 1440.0;
const kSideMenuWidth = 300.0;
const kNavigationRailWidth = 72.0;

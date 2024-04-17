import 'package:flutter/material.dart';
import 'package:food_stuff/src/utils/constants.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) => kScreenWidth(context) < 850;

  static bool isTablet(BuildContext context) =>
      kScreenWidth(context) < 1100 && kScreenWidth(context) >= 850;

  static bool isDesktop(BuildContext context) => kScreenWidth(context) >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // Desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // Tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Mobile
    else {
      return mobile;
    }
  }
}

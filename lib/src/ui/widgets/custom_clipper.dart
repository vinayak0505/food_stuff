import 'package:flutter/material.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2, 0.0);
    // path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(oldClipper) => false;
}

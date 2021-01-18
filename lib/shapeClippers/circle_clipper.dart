import 'dart:ui';
import 'package:flutter/material.dart';

class ClipperSemiCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(30, size.height);
    path.quadraticBezierTo(0,0,
        size.width, 45);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
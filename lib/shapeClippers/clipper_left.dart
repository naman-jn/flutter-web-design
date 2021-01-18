import 'dart:ui';
import 'package:flutter/material.dart';
class ClipperLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(
        size.width / 10, size.height / 9, size.width/1.7, size.height / 6 + 10);
    
    path.quadraticBezierTo(size.width- 20, size.height/3,
        size.width/1.8, size.height);

    path.quadraticBezierTo(size.width - (size.width / 3), size.height,
        size.width/2, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
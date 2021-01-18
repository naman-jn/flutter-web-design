import 'dart:ui';
import 'package:flutter/material.dart';

class ClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.quadraticBezierTo(
        size.width / 12, size.height / 3, 
        size.width / 3, size.height / 3 + 10);
    path.quadraticBezierTo(size.width / 2 , size.height / 3 + 20,
        size.width / 2, size.height / 1.5);
    path.quadraticBezierTo(size.width / 2-10, size.height,
        size.width, size.height/2);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
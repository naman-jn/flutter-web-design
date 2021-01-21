import 'dart:ui';
import 'package:flutter/material.dart';

class ClipperTop extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.quadraticBezierTo(
    //     size.width / 12, size.height / 3,
    //     size.width / 3, size.height / 3 + 10);
    // path.quadraticBezierTo(size.width / 2 , size.height / 3 + 20,
    //     size.width / 2, size.height / 1.5);
    // path.quadraticBezierTo(size.width / 2-10, size.height,
    //     size.width, size.height/2);
    // path.lineTo(size.width, 0);
    // path.close();
    path.lineTo(size.width * 0.27, size.height * 0.39);
    path.cubicTo(size.width * 0.07, size.height / 2, size.width * 0.01,
        size.height * 0.17, 0, 0);
    path.cubicTo(0, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, size.height * 0.86, size.width,
        size.height * 0.86);
    path.cubicTo(size.width * 0.81, size.height * 1.13, size.width * 0.59,
        size.height * 0.95, size.width * 0.53, size.height * 0.73);
    path.cubicTo(size.width * 0.42, size.height / 3, size.width * 0.36,
        size.height * 0.34, size.width * 0.27, size.height * 0.39);
    path.cubicTo(size.width * 0.27, size.height * 0.39, size.width * 0.27,
        size.height * 0.39, size.width * 0.27, size.height * 0.39);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

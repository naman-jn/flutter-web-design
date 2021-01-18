import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final int size;
  const CustomText({
    @required this.text,
    @required this.size,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent[700],
          fontSize: size.toDouble(),
          letterSpacing: 2),
    );
  }
}

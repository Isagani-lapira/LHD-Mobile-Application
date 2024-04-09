import 'package:flutter/material.dart';

Widget buildText(String text, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: Color(0xFF292929),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

Widget buildText(String text, double fontSize, FontWeight fontWeight) {
  return Text(
    text,
    textAlign: TextAlign.start,
    style: TextStyle(
      fontFamily: 'Poppins',
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: AppColor.textColor,
    ),
  );
}

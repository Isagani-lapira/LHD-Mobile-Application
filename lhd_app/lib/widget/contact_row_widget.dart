import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

Widget buildContactRow(IconData iconData, String title, String content) {
  return Row(
    children: [
      Icon(iconData, color: AppColor.textColor, size: 30),
      SizedBox(width: 5),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Color(0xFF292929),
            ),
          ),
          Text(
            content,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Color(0xFF292929),
            ),
          ),
        ],
      ),
    ],
  );
}

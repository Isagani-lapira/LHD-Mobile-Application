import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'Contact Us',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppColor.textColor,
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      color: AppColor.textColor,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}

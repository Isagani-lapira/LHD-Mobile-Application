import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        color: AppColor.primaryColor,
      ),
      bodyMedium: TextStyle(
        color: AppColor.textColor,
        fontSize: 14.0,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.borderOutlineColor),
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
    ),
  );
}

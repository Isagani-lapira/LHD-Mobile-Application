import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Poppins',
      ),
      bodyMedium: TextStyle(
        color: AppColor.textColor,
        fontSize: 14.0,
        fontFamily: 'Poppins',
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
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)))),
        backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
        textStyle: MaterialStatePropertyAll(TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins',
        )),
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20.0)),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    fontFamily: 'Poppins',
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 32,
        color: AppColor.primaryColor,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
      bodyLarge: TextStyle(
          color: AppColor.textColor,
          fontSize: 16.0,
          fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(
        color: AppColor.textColor,
        fontSize: 14.0,
      ),
      bodySmall: TextStyle(color: AppColor.textColor),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: CustomBorders.BorderActiveStyle,
      enabledBorder: CustomBorders.BorderInactiveStyle,
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
    outlinedButtonTheme: const OutlinedButtonThemeData(
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
          side: MaterialStatePropertyAll(
            BorderSide(
              color: AppColor.primaryColor,
              width: 1.5,
            ),
          ),
          padding:
              MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 20.0))),
    ),
  );

  static ButtonStyle bodyButton =
      AppTheme.lightTheme.textButtonTheme.style!.copyWith(
    padding: const MaterialStatePropertyAll(
      EdgeInsets.symmetric(vertical: 5.0),
    ),
  );
}

//fields custom fields
class CustomBorders {
  static OutlineInputBorder BorderInactiveStyle = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.borderOutlineColor),
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  );

  static OutlineInputBorder BorderActiveStyle = const OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.secondaryColor, width: 2.0),
    borderRadius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  );
}

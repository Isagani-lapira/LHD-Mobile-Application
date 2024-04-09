import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      'Contact Us',
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color(0xFF292929),
      ),
    ),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      color: Color(0xFF292929),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}

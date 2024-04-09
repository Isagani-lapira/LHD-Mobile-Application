import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

Widget buildSubmitButton() {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColor.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Submit',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    ),
  );
}

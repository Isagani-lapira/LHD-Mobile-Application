import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.message,
  });

  Widget selectDialog(context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(
          title,
          style: TextStyle(
            color: (title == AppString.successTitle)
                ? Colors.green
                : AppColor.textColor,
          ),
        ),
        content: Text(message),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              'Okay',
              style: TextStyle(color: AppColor.textColor),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    }
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          color: (title == AppString.successTitle)
              ? Colors.green
              : AppColor.textColor,
        ),
      ),
      content: Text(message),
      elevation: 3.0,
      shadowColor: AppColor.backgroundColor,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          ),
          child: const Text(
            'Okay',
            style: TextStyle(color: AppColor.textColor),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return selectDialog(context);
  }
}

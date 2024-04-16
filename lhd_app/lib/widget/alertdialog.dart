import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final Function? onPressed;
  final String positiveButton;
  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.message,
    this.onPressed,
    this.positiveButton = 'Okay',
  });

  Widget selectDialog(context) {
    if (Platform.isIOS) {
      return CupertinoAlertDialog(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 22.0,
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
              onPressed!(context);
            },
          ),
        ],
      );
    }
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 22.0,
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
            onPressed!(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              (positiveButton == 'Okay') ? Colors.transparent : Colors.red,
            ),
          ),
          child: Text(
            positiveButton,
            style: TextStyle(
                color: (positiveButton == 'Okay')
                    ? AppColor.textColor
                    : Colors.white),
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

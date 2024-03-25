import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function onClicked;
  const PrimaryButton(
      {super.key, required this.label, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          onClicked();
        },
        child: Text(
          label,
          style: const TextStyle(inherit: false),
        ),
      ),
    );
  }
}

class OutlineBtn extends StatelessWidget {
  final Function onPressed;
  const OutlineBtn({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onPressed();
      },
      child: const Text(
        'Sign up',
        style: TextStyle(
          color: AppColor.primaryColor,
        ),
      ),
    );
  }
}

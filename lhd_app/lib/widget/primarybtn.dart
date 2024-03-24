import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  const PrimaryButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: const TextStyle(inherit: false),
        ),
      ),
    );
  }
}

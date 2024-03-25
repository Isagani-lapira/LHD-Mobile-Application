import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Function onChanged;
  final TextEditingController? controller;
  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,
          decoration: InputDecoration(hintText: hint),
          onChanged: (value) {
            onChanged(value);
          },
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

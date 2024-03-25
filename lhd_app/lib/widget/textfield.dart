import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  const CustomTextField({super.key, required this.label, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(decoration: InputDecoration(hintText: hint)),
        const SizedBox(height: 10.0),
      ],
    );
  }
}

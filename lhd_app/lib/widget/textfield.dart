import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Function onChanged;
  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
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

import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';

class HighlightWrapper extends StatelessWidget {
  final String lightText;
  final String highlightedText;
  final String routeName;
  const HighlightWrapper({
    super.key,
    required this.lightText,
    required this.highlightedText,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(lightText),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Text(
              highlightedText,
              style: const TextStyle(
                  color: AppColor.primaryColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

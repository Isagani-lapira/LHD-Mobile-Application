import 'package:flutter/material.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/string.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppString.title,
      style: AppTheme.lightTheme.textTheme.titleLarge,
      textAlign: TextAlign.center,
    );
  }
}

class TagLineWidget extends StatelessWidget {
  const TagLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppString.tagLine,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
      ),
    );
  }
}

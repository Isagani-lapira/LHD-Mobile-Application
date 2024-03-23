import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/landingscreen.dart';
import 'package:lhd_app/theme/theme.dart';

void main() {
  runApp(const LHDApp());
}

class LHDApp extends StatelessWidget {
  const LHDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}

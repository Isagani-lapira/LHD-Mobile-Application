import 'package:flutter/material.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/carouselwidget.dart';

class ServiceScreen extends StatelessWidget {
  static const String id = 'service_screen';
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.services,
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 10.0),
        child: ListView(
          children: const [
            Text(AppString.headlineService),
            CarouselWidget(),
          ],
        ),
      ),
    );
  }
}

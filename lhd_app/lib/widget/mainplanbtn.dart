import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/string.dart';

import '../theme/theme.dart';

class ViewPlanButton extends StatefulWidget {
  const ViewPlanButton({super.key});

  @override
  State<ViewPlanButton> createState() => _ViewPlanButtonState();
}

class _ViewPlanButtonState extends State<ViewPlanButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _controller.forward();
    _controller.addListener(() {
      setState(() {}); //manage the controller values
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
        style: AppTheme.lightTheme.textButtonTheme.style!.copyWith(
          backgroundColor: MaterialStatePropertyAll(
            AppColor.primaryColor.withOpacity(_controller.value),
          ),
        ),
        child: const Text(
          AppString.housePlan,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}

class RequestQuoteWidget extends StatelessWidget {
  const RequestQuoteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: AppTheme.lightTheme.textButtonTheme.style!.copyWith(
            backgroundColor:
                const MaterialStatePropertyAll(AppColor.backgroundColor)),
        child: const Text(
          AppString.roq,
          style: TextStyle(
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w500,
          ),
        ));
  }
}

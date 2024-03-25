import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black45,
      child: Center(
        child: LoadingAnimationWidget.fourRotatingDots(
            color: AppColor.primaryColor, size: 35.0),
      ),
    );
  }
}

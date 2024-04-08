import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';

class AboutCategoryWidget extends StatelessWidget {
  const AboutCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      height: null,
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 20.0,
        children: List.generate(kshowcase.length, (index) {
          return Column(
            children: [
              Expanded(
                child: Image.network(
                  kshowcase[index]['imagePath']!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                kshowcase[index]['title']!,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              )
            ],
          );
        }),
      ),
    );
  }
}

class AboutCategory extends StatelessWidget {
  final String titleCount;
  final String titlePlan;
  const AboutCategory({
    super.key,
    required this.titleCount,
    required this.titlePlan,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          titleCount,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        Text(
          titlePlan,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: AppColor.secondaryColor,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}

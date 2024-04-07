import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/designdescription.dart';

class AboutUsScreen extends StatelessWidget {
  static const String id = 'aboutUs_screen';
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.aboutTxt,
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            const Text(
              AppString.aboutDesc,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const DetailWidget(title: '', descriptions: kAbouDescr),
            const SizedBox(height: 10.0),
            const Row(
              children: [
                Expanded(
                    flex: 1,
                    child: AboutCategory(
                        titleCount: '120+', titlePlan: 'House Plan')),
                Expanded(
                  flex: 1,
                  child: AboutCategory(
                      titleCount: '24+', titlePlan: 'Year of Helping People'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const AboutCategory(
                titleCount: '100+', titlePlan: 'Design Guarantee'),
            Container(
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
            )
          ],
        ),
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
        Text(titlePlan,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppColor.secondaryColor,
              fontSize: 16.0,
            )),
      ],
    );
  }
}

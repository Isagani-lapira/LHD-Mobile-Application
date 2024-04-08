import 'package:flutter/material.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/aboutwidget.dart';
import 'package:lhd_app/widget/designdescription.dart';
import 'package:lhd_app/widget/feedbacksheet.dart';

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
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(25.0),
            child: const Column(
              children: [
                Text(
                  AppString.aboutDesc,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                DetailWidget(title: '', descriptions: kAbouDescr),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: AboutCategory(
                          titleCount: '120+', titlePlan: 'House Plan'),
                    ),
                    Expanded(
                      flex: 1,
                      child: AboutCategory(
                          titleCount: '24+',
                          titlePlan: 'Year of Helping People'),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                AboutCategory(
                  titleCount: '100+',
                  titlePlan: 'Design Guarantee',
                ),
                AboutCategoryWidget()
              ],
            ),
          ),
          const FeedbackSheet(),
        ],
      ),
    );
  }
}

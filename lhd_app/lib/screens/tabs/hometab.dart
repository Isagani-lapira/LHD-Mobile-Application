import 'package:flutter/material.dart';
import 'package:lhd_app/screens/tabs/homesection/categorysection.dart';
import 'package:lhd_app/screens/tabs/homesection/servicesection.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/widget/welcomecard.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WelcomeCard(),
          SizedBox(height: 15.0),
          TabBar(
            indicatorColor: AppColor.secondaryColor,
            labelColor: AppColor.secondaryColor,
            tabs: [
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Services',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Text(
                  'Category',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: TabBarView(
              children: [
                ServicesList(),
                CategoryList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

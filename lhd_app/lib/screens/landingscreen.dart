import 'package:flutter/material.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/title.dart';
import 'package:lhd_app/widget/mainplanbtn.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TitleWidget(),
                    TagLineWidget(),
                  ],
                ),
              ),
              Column(
                children: [
                  const ViewPlanButton(),
                  const RequestQuoteWidget(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 25.0),
                    child: const Text(
                      AppString.websiteLink,
                      style: TextStyle(fontSize: 12.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

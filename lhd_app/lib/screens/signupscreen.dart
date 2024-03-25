import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/login.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/primarybtn.dart';
import 'package:lhd_app/widget/textfield.dart';
import 'package:lhd_app/widget/wraphighlight.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: kBodyPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('assets/images/building_logo.png'),
              const Text(
                AppString.register,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              const Text('Join our growing community'),
              const SizedBox(
                height: 25.0,
              ),
              const CustomTextField(
                label: AppString.email,
                hint: AppString.emailLabel,
              ),
              const CustomTextField(
                label: AppString.pass,
                hint: AppString.passLabel,
              ),
              const CustomTextField(
                  label: AppString.confirmPass, hint: AppString.passLabel),
              PrimaryButton(
                label: 'Sign up',
                onClicked: () {},
              ),
              const HighlightWrapper(
                lightText: AppString.haveAccLabel,
                highlightedText: AppString.login,
                routeName: LoginScreen.id,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                AppString.login,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              const Text('Login to continue...'),
              const SizedBox(
                height: 25.0,
              ),
              const Text('Email Address'),
              const TextField(
                  decoration: InputDecoration(hintText: AppString.emailLabel)),
              const SizedBox(
                height: 10.0,
              ),
              const Text('Password'),
              const TextField(
                  decoration: InputDecoration(hintText: AppString.passLabel)),
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.end,
              ),
              Container(
                margin: const EdgeInsets.only(top: 25.0),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    AppString.login,
                    style: TextStyle(inherit: false),
                  ),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\’t have account?'),
                    Text(
                      'Create account',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

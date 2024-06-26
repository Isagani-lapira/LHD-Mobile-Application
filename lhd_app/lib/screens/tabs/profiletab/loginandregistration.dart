import 'package:flutter/material.dart';
import 'package:lhd_app/screens/login.dart';
import 'package:lhd_app/screens/signupscreen.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/primarybtn.dart';

class LoginRegistrationView extends StatelessWidget {
  const LoginRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/house__blueprint.png'),
          Text(
            AppString.noAccLabel,
            style: AppTheme.lightTheme.textTheme.bodyMedium!.copyWith(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 25.0),
          const Text(
            AppString.subNoTitleDesc,
            textAlign: TextAlign.center,
          ),
          PrimaryButton(
              label: 'Login',
              onClicked: () => Navigator.pushNamed(context, LoginScreen.id)),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            child: OutlineBtn(onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            }),
          )
        ],
      ),
    );
  }
}

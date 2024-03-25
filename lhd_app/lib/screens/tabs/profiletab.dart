import 'package:flutter/material.dart';
import 'package:lhd_app/screens/login.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/primarybtn.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset('assets/images/building_logo.png'),
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
          LoginBtn(
              label: 'Login',
              onClicked: () => Navigator.pushNamed(context, LoginScreen.id)),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            child: SignUpBtn(onPressed: () {}),
          )
        ],
      ),
    );
  }
}

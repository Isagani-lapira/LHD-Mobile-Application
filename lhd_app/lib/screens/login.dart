import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/signupscreen.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/loading.dart';
import 'package:lhd_app/widget/primarybtn.dart';
import 'package:lhd_app/widget/textfield.dart';
import 'package:lhd_app/widget/wraphighlight.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String emailAdd = '';
  String password = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
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
                CustomTextField(
                    label: AppString.email,
                    hint: AppString.emailLabel,
                    onChanged: (newText) => emailAdd = newText),
                CustomTextField(
                  label: AppString.pass,
                  hint: AppString.passLabel,
                  onChanged: (newText) => password = newText,
                  obscure: true,
                ),
                const Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.end,
                ),
                PrimaryButton(
                  label: AppString.login,
                  onClicked: () {
                    setState(() => _isLoading = true);
                    Authentication.signIn(
                      context,
                      emailAdd,
                      password,
                      onLoad: () {
                        setState(() => _isLoading = false);
                        Navigator.pushReplacementNamed(context, HomeScreen.id);
                      },
                    );
                  },
                ),
                const HighlightWrapper(
                  lightText: AppString.noAccLabel,
                  highlightedText: AppString.create,
                  routeName: SignUpScreen.id,
                )
              ],
            ),
          ),
        ),
        if (_isLoading) const LoadingWidget()
      ]),
    );
  }
}

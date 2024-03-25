import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/login.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/alertdialog.dart';
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
  String _emailAdd = '';
  String _password = '';
  String _confirmPass = '';
  final TextEditingController _passController = TextEditingController();

  void processRegistration(String confirmPass) async {
    if (confirmPass == _password) {
      Authentication.isCreationSuccess(context, _emailAdd, _password);
    } else {
      showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: AppString.warningTitle,
          message: AppString.passChecking,
          onPressed: (dialogContext) {
            Navigator.pop(dialogContext);
          },
        ),
      );
      _passController.clear();
    }
  }

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
              CustomTextField(
                label: AppString.email,
                hint: AppString.emailLabel,
                onChanged: (email) {
                  _emailAdd = email;
                },
              ),
              CustomTextField(
                label: AppString.pass,
                hint: AppString.passLabel,
                onChanged: (value) {
                  _password = value;
                },
              ),
              CustomTextField(
                label: AppString.confirmPass,
                hint: AppString.passLabel,
                onChanged: (confirmPass) {
                  _confirmPass = confirmPass;
                },
                controller: _passController,
              ),
              PrimaryButton(
                label: 'Sign up',
                onClicked: () => processRegistration(_confirmPass),
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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/alertdialog.dart';

class Authentication {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static bool isLoggedIn() {
    bool isLoggedIn = false;
    auth.authStateChanges().listen((user) {
      if (user != null) {
        isLoggedIn = true;
      }
    });

    return isLoggedIn;
  }

  static void isCreationSuccess(context, String emailAddress, String password,
      {Function? onLoad}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);

      //process after loading
      if (onLoad != null) {
        onLoad();
      }
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => CustomAlertDialog(
          title: AppString.successTitle,
          message: AppString.successRegis,
          onPressed: (context) {
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          },
        ),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: AppString.warningTitle,
          message: tripErrorMessage(e.toString()),
          onPressed: () {},
        ),
      );
    }
  }

  //remove the error code and get only the message
  static String tripErrorMessage(String error) {
    return error.substring(error.indexOf(']') + 1).trim();
  }
}

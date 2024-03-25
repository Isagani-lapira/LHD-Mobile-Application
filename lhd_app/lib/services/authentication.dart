import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
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

  static void createAccount(context, emailAddress, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: emailAddress, password: password);

      showDialog(
        context: context,
        builder: (context) => const CustomAlertDialog(
          title: AppString.successTitle,
          message: AppString.successRegis,
        ),
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: AppString.warningTitle,
          message: tripErrorMessage(e.toString()),
        ),
      );
    }
  }

  //remove the error code and get only the message
  static String tripErrorMessage(String error) {
    return error.substring(error.indexOf(']') + 1).trim();
  }
}

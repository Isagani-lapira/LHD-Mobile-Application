import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/alertdialog.dart';

class Authentication {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future<bool> isLoggedIn() async {
    final user = auth.currentUser;
    return user != null;
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

  static void signIn(context, String emailAdd, String password,
      {Function? onLoad}) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: emailAdd, password: password);

      if (onLoad != null) onLoad();
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return CustomAlertDialog(
              title: AppString.warningTitle,
              message: tripErrorMessage(e.toString()),
              onPressed: (dialogContext) {
                Navigator.pop(dialogContext);
              },
            );
          });
    }
  }

  static void signOut(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      showDialog(
          context: context,
          builder: (context) {
            return CustomAlertDialog(
              title: AppString.warningTitle,
              message: tripErrorMessage(e.toString()),
              onPressed: (dialogContext) {
                Navigator.pop(dialogContext);
              },
            );
          });
    }
  }
}

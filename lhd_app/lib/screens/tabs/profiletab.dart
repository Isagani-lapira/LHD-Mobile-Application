import 'package:flutter/material.dart';
import 'package:lhd_app/screens/tabs/profiletab/credentialview.dart';
import 'package:lhd_app/screens/tabs/profiletab/loginandregistration.dart';
import 'package:lhd_app/services/authentication.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  //display widget depending on the user log
  Future<Widget> isSignedIn(BuildContext context) async {
    bool signedIn = await Authentication.isLoggedIn();
    return (signedIn) ? const CredentialView() : const LoginRegistrationView();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: isSignedIn(context),
      builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return snapshot.hasData ? snapshot.data! : const Text('Error');
      },
    );
  }
}

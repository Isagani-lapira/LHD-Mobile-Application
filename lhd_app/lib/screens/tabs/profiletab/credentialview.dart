import 'package:flutter/material.dart';
import 'package:lhd_app/widget/accountoptionwidget.dart';
import 'package:lhd_app/widget/shoppingactionwidget.dart';
import 'package:lhd_app/widget/welcomecard.dart';

class CredentialView extends StatelessWidget {
  const CredentialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const WelcomeCard(isEdittable: true),
        ShoppingActionList(),
        const AccountOption(),
      ],
    );
  }
}

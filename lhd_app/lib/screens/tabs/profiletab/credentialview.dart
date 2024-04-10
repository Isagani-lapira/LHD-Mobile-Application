import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/widget/accountoptionwidget.dart';
import 'package:lhd_app/widget/shoppingactionwidget.dart';

class CredentialView extends StatelessWidget {
  const CredentialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
              radius: 30, // Set a radius for the CircleAvatar
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Hi, Isagani!',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: AppColor.iconColor),
                      Text('Pittsburgh, Pennsylvania')
                    ],
                  )
                ],
              ),
            ),
            Icon(Icons.edit_outlined)
          ],
        ),
        ShoppingActionList(),
        AccountOption(),
      ],
    );
  }
}

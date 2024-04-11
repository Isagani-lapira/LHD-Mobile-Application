import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class WelcomeCard extends StatelessWidget {
  final bool isEdittable;
  const WelcomeCard({
    super.key,
    this.isEdittable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/avatar/male_avatar.png'),
          radius: 30, // Set a radius for the CircleAvatar
        ),
        const Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Hi, Isagani!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
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
        if (isEdittable) const Icon(Icons.edit_outlined)
      ],
    );
  }
}

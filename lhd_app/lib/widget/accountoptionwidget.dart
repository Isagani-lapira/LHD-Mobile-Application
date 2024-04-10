import 'package:flutter/material.dart';
import 'package:lhd_app/theme/colors.dart';

class AccountOption extends StatelessWidget {
  AccountOption({super.key});

  final List<Map<String, dynamic>> _actionOptions = [
    {
      'icon': Icons.account_circle,
      'actionName': 'My Account',
      'subtitle': 'Make changes to your account',
    },
    {
      'icon': Icons.local_mall_outlined,
      'actionName': 'Order History',
      'subtitle': 'Make changes to your account this is my first rar',
    },
    {
      'icon': Icons.logout_outlined,
      'actionName': 'Logout',
      'subtitle': 'Log your current account to this device',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: _actionOptions.map((item) {
            return Container(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  item['icon'],
                  color: (item['actionName'] == 'Logout')
                      ? const Color.fromARGB(255, 255, 119, 109)
                      : AppColor.iconColor,
                ),
                title: Text(
                  item['actionName'],
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: (item['actionName'] == 'Logout')
                          ? const Color.fromARGB(255, 255, 119, 109)
                          : null),
                ),
                subtitle: Text(
                  item['subtitle'],
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xFFABABAB)),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

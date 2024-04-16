import 'package:flutter/material.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/services/authentication.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/utils/constant.dart';
import 'package:lhd_app/widget/alertdialog.dart';

enum ItemSelected { account, order, logout }

class AccountOption extends StatefulWidget {
  const AccountOption({super.key});

  @override
  State<AccountOption> createState() => _AccountOptionState();
}

class _AccountOptionState extends State<AccountOption> {
  void onItemSelected(BuildContext context, ItemSelected itemSelected) {
    switch (itemSelected) {
      case ItemSelected.account:
        print('account');
        break;
      case ItemSelected.order:
        print('order');
        break;
      case ItemSelected.logout:
        showDialog(
            context: context,
            builder: (context) {
              return CustomAlertDialog(
                title: 'Logout',
                message: 'Are your sure you want to log-out?',
                positiveButton: 'Delete',
                onPressed: (c) {
                  Authentication.signOut(context);
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              );
            });
        break;
      default:
        print('Default');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: kActionOptions.asMap().entries.map((entry) {
            final index = entry.key;
            final item = entry.value;
            return Container(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                onTap: () {
                  onItemSelected(context, ItemSelected.values[index]);
                },
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

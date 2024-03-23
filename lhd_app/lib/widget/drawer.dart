import 'package:flutter/material.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/constant.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              children: [
                DrawerHeader(
                  child: Center(
                    child: Column(
                      children: [
                        const Expanded(
                          child: CircleAvatar(
                            radius: 80.0,
                            backgroundImage: NetworkImage(
                                'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
                          ),
                        ),
                        Text(
                          'Isagani T. Lapira Jr',
                          style: AppTheme.lightTheme.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                for (var menu in kMenuItem)
                  ListTile(
                    leading: menu['icon'],
                    title: Text(menu['title']),
                  )
              ],
            ),
          ),
          const ListTile(
            leading: Icon(Icons.logout_outlined),
            title: Text('Sign out'),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lhd_app/screens/tabs/hometab.dart';
import 'package:lhd_app/screens/tabs/profiletab.dart';
import 'package:lhd_app/theme/colors.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:lhd_app/utils/string.dart';
import 'package:lhd_app/widget/drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _sample = [
    HomeTab(),
    Text('SIPS'),
    Text('Portfolio'),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.title,
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: _sample[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          CustomBottomNavBarItem(
            selectedIcon: const Icon(Icons.home),
            label: 'Home',
          ),
          CustomBottomNavBarItem(
            selectedIcon: const Icon(Icons.home),
            label: 'SIPS',
          ),
          CustomBottomNavBarItem(
            selectedIcon: const Icon(Icons.source),
            label: 'Portfolio',
          ),
          CustomBottomNavBarItem(
            selectedIcon: const Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.textColor,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      drawer: const CustomDrawer(),
    );
  }
}

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  CustomBottomNavBarItem({
    required String label,
    required Icon selectedIcon,
  }) : super(
          icon: const SizedBox.shrink(),
          activeIcon: selectedIcon,
          label: label,
        );
}

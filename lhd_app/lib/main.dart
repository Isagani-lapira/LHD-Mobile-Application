import 'package:flutter/material.dart';
import 'package:lhd_app/screens/aboutusscreen.dart';
import 'package:lhd_app/screens/homescreen.dart';
import 'package:lhd_app/screens/landingscreen.dart';
import 'package:lhd_app/screens/login.dart';
import 'package:lhd_app/screens/product/selectedproduct.dart';
import 'package:lhd_app/screens/servicescreen.dart';
import 'package:lhd_app/screens/signupscreen.dart';
import 'package:lhd_app/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const LHDApp());
}

class LHDApp extends StatelessWidget {
  const LHDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => const LandingScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        AboutUsScreen.id: (context) => const AboutUsScreen(),
        ServiceScreen.id: (context) => const ServiceScreen(),
        ProductView.id: (context) => const ProductView(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

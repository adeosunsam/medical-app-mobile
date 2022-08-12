import 'package:flutter/material.dart';
import 'package:medical_app_mobile/Screens/onboarding_screen.dart';
import 'package:medical_app_mobile/components/colors.dart';

void main() async {
  //delayed launch to allow pageview to load
  await Future.delayed(const Duration(milliseconds: 200));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: ColorConstant.primaryColor,
      ),
      home: const OnboardingScreen(),
    );
  }
}

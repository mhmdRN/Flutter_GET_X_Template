
import 'package:ecommerce_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:ecommerce_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme:AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
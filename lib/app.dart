import 'package:cook_book/app/onboarding/screens/onboard_screen.dart';
import 'package:cook_book/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      home: const OnBoardScreen(),
    );
  }
}

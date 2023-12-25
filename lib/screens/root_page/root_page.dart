import 'package:flutter/material.dart';
import 'package:welcome_login/screens/welcome_page/welcome_page.dart';
import 'package:welcome_login/theme/primary_theme.dart';

class WelcomeLoginApp extends StatelessWidget {
  const WelcomeLoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Login App',
      theme: appThemeData,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

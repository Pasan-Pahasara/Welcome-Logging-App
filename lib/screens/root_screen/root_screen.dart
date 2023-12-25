import 'package:flutter/material.dart';

import '../../theme/primary_theme.dart';
import '../welcome_screen/welcome_screen.dart';

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

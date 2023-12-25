import 'package:flutter/material.dart';

import '../../theme/primary_theme.dart';
import '../welcome_screen/welcome_screen.dart';

/// The root screen of the Welcome Login App.
/// 
/// This screen is responsible for initializing the MaterialApp and setting up the
/// initial route to the [WelcomeScreen]. It also applies the [appThemeData] theme
/// to the entire app and hides the debug banner.
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

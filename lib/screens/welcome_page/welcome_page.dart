import 'package:flutter/material.dart';
import 'package:welcome_login/screens/widget/background.dart';
import 'package:welcome_login/theme/responsive_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Row(
              mainAxisAlignment: MainAxisAlignment.end,
            ), mobile: Text("Mobile"), 
          ),
        ),
      ),
    );
  }
}


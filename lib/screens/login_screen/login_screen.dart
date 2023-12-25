import 'package:flutter/material.dart';

import '../../theme/responsive_theme.dart';
import '../widget/background.dart';
import 'widget/login_form.dart';
import 'widget/login_screen_top_image.dart';

/// This is the [LoginScreen] class which represents the login screen of the application.
/// It is a stateless widget that displays a background with a responsive layout.
/// On mobile devices, it shows the [MobileLoginScreen] widget, while on desktop it shows a row with an image and a login form.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: MobileLoginScreen(),
          desktop: Row(
            children: [
              Expanded(
                child: LoginScreenTopImage(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 450,
                      child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This class represents the mobile login screen.
/// It is a stateless widget that displays a column with a top image and a login form.
class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        LoginScreenTopImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

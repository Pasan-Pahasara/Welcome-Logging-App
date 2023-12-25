import 'package:flutter/material.dart';

import '../../theme/responsive_theme.dart';
import '../widget/background.dart';
import 'widget/login_signup_btn.dart';
import 'widget/welcome_image.dart';

/// The welcome screen widget.
/// 
/// This widget displays the welcome screen of the application.
/// It contains a background with a responsive layout that adjusts
/// based on the device's screen size. On desktop, it shows an
/// image on the left side and a login/signup button on the right side.
/// On mobile, it displays a different layout using the [MobileWelcomeScreen] widget.
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
              children: [
                Expanded(
                  child: WelcomeImage(),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 450,
                        child: LoginAndSignupBtn(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            mobile: MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

/// A mobile welcome screen widget.
///
/// This widget displays a welcome screen for mobile devices.
/// It consists of a column with a welcome image and a row with a login and signup button.
class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WelcomeImage(),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}

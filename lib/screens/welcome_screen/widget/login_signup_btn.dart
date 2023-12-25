import 'package:flutter/material.dart';
import 'package:welcome_login/theme/styled_theme.dart';

/// A widget that displays login and sign up buttons.
///
/// This widget is used in the welcome screen to provide buttons for logging in and signing up.
/// It contains two [ElevatedButton] widgets: one for logging in and one for signing up.
/// The login button navigates to a screen displaying the text "Login" when pressed,
/// while the sign up button navigates to a screen displaying the text "Sign Up".
class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Text("Login");
                },
              ),
            );
          },
          child: Text(
            "Login".toUpperCase(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const Text("Sign Up");
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.rootPrimaryLightColor,
            elevation: 0,
          ),
          child: Text(
            "Sign Up".toUpperCase(),
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}

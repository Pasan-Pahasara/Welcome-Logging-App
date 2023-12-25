import 'package:flutter/material.dart';

import '../../theme/styled_theme.dart';

/// A widget that displays a text and a gesture detector for toggling between login and sign up screens.
///
/// The [AlreadyHaveAnAccountCheck] widget is typically used within a login or sign up screen to provide a link for users to switch between the two screens.
/// It displays a text that prompts the user to either sign up or sign in, and a gesture detector that triggers the provided [press] function when tapped.
///
/// Example usage:
/// ```dart
/// AlreadyHaveAnAccountCheck(
///   login: true,
///   press: () {
///     // Perform sign up or sign in action
///   },
/// )
/// ```
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;

  /// Creates a [AlreadyHaveAnAccountCheck] widget.
  ///
  /// The [login] parameter determines whether the text should prompt the user to sign up or sign in.
  /// The [press] parameter is a callback function that is triggered when the gesture detector is tapped.
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: AppColors.rootPrimaryColor),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: AppColors.rootPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}

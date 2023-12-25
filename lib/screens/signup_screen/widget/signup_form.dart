import 'package:flutter/material.dart';

import '../../../theme/styled_theme.dart';
import '../../login_screen/login_screen.dart';
import '../../widget/already_have_an_account_acheck.dart';

/// A form for signing up a user.
///
/// This form includes input fields for email and password, as well as a sign-up button
/// and a link to the login screen. It is typically used in the sign-up screen of an app.
class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Email input field
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: AppColors.rootPrimaryColor,
            onSaved: (email) {},
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(AppSizes.defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          // Password input field
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: AppSizes.defaultPadding),
            child: TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: AppColors.rootPrimaryColor,
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(AppSizes.defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.defaultPadding / 2),
          // Sign-up button
          ElevatedButton(
            onPressed: () {},
            child: Text("Sign Up".toUpperCase()),
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          // Link to the login screen
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../theme/styled_theme.dart';
import '../../widget/already_have_an_account_acheck.dart';

/// A form for the login screen.
///
/// This widget displays a form with input fields for email and password,
/// along with a login button and a link to sign up.
class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

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
          const SizedBox(height: AppSizes.defaultPadding),
          // Login button
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login".toUpperCase(),
            ),
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          // Link to sign up
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const Text("Sign Up");
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

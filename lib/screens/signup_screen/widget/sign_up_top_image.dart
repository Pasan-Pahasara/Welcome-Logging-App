import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../theme/styled_theme.dart';

/// A widget that displays the top image section of the sign-up screen.
///
/// This widget includes the "Sign Up" text and an SVG image for the sign-up icon.
/// It is typically used as the header of the sign-up screen.
class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign Up".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: AppSizes.defaultPadding),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset("assets/icons/signup.svg"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: AppSizes.defaultPadding),
      ],
    );
  }
}

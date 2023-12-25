import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/styled_theme.dart';

/// A widget that displays a welcome image.
///
/// This widget is typically used in the welcome page of an application.
/// It consists of a column with a welcome text and an image.
/// The welcome text is displayed in bold font.
/// The image is loaded from an SVG file located in the assets folder.
class WelcomeImage extends StatelessWidget {
  const WelcomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "WELCOME TO EDU",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: AppSizes.defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/chat.svg",
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: AppSizes.defaultPadding * 2),
      ],
    );
  }
}

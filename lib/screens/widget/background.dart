import 'package:flutter/material.dart';

/// A widget that provides a background with top and bottom images.
///
/// The [Background] widget is typically used as the background for login or welcome screens.
/// It takes a [child] widget as its content and displays a top and bottom image.
/// The top and bottom images can be customized by providing the [topImage] and [bottomImage] paths.
///
/// Example usage:
/// ```dart
/// Background(
///   child: LoginForm(),
///   topImage: "assets/images/main_top.png",
///   bottomImage: "assets/images/login_bottom.png",
/// )
/// ```
class Background extends StatelessWidget {
  final Widget child;
  final String topImage;
  final String bottomImage;

  /// Creates a [Background] widget.
  ///
  /// The [child] parameter is required and represents the content of the background.
  /// The [topImage] and [bottomImage] parameters are optional and default to specific image paths.
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// A widget that provides responsive behavior based on the screen size.
///
/// The [Responsive] widget takes three child widgets: [mobile], [tablet], and [desktop].
/// It determines which child widget to display based on the screen size.
/// If the screen width is less than 850 pixels, the [mobile] widget is displayed.
/// If the screen width is between 850 and 1100 pixels, the [tablet] widget is displayed.
/// If the screen width is greater than or equal to 1100 pixels, the [desktop] widget is displayed.
///
/// Example usage:
/// ```dart
/// Responsive(
///   mobile: MobileWidget(),
///   tablet: TabletWidget(),
///   desktop: DesktopWidget(),
/// )
/// ```
class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  /// Returns `true` if the screen width is less than 850 pixels.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  /// Returns `true` if the screen width is between 850 and 1100 pixels.
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  /// Returns `true` if the screen width is greater than or equal to 1100 pixels.
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        } else if (constraints.maxWidth >= 850) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
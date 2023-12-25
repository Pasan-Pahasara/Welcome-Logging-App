import 'package:flutter/material.dart';
import 'package:welcome_login/theme/styled_theme.dart';

/// The primary theme data for the app.
final ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.rootPrimaryColor,
  scaffoldBackgroundColor: Colors.white,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.rootPrimaryColor,
      shape: const StadiumBorder(),
      maximumSize: const Size(double.infinity, 56),
      minimumSize: const Size(double.infinity, 56),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: AppColors.rootPrimaryLightColor,
    iconColor: AppColors.rootPrimaryColor,
    prefixIconColor: AppColors.rootPrimaryColor,
    contentPadding: EdgeInsets.symmetric(
        horizontal: AppSizes.defaultPadding, vertical: AppSizes.defaultPadding),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide.none,
    ),
  ),
);

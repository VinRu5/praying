import 'package:flutter/material.dart';
import 'package:praying/theme/models/app_colors.dart';
import 'package:praying/theme/models/praying_theme.dart';

class LightTheme {
  static get make => ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        extensions: [
          PrayingThemeExtension(),
        ],
        primaryColor: AppColors.primaryColor,
        colorScheme: PrayingTheme.colorSchemeLight,
        fontFamily: 'Nunito',
        cardTheme: PrayingTheme.cardTheme,
        iconTheme: PrayingTheme.iconTheme,
      );
}

class DarkTheme {
  static get make => ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        extensions: [
          PrayingThemeExtension(),
        ],
        primaryColor: AppColors.primaryColor,
        colorScheme: PrayingTheme.colorSchemeDark,
        fontFamily: 'Nunito',
        cardTheme: PrayingTheme.cardTheme,
        iconTheme: PrayingTheme.iconTheme,
      );
}

class AppStyles {
  const AppStyles._();

  static TextTheme textTheme(BuildContext context) => Theme.of(context).textTheme;
}

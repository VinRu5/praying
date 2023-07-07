import 'package:flutter/material.dart';
import 'app_colors.dart';

/// A convenience class that contains the specific theme for the Prayer App.
///
/// Example: Gets the static value to the text theme.
/// ```dart
/// PrayingTheme.testThemeDark
/// ```
class PrayingTheme {
  PrayingTheme._();

  // -- TEXT STYLES -----------------------------
  static const TextStyle _displayLargeLight = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 80.0,
    letterSpacing: 3,
  );

  static const TextStyle _displayLargeDark = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 80.0,
    letterSpacing: 3,
  );

  static const TextStyle _displayMediumLight = TextStyle(
    color: AppColors.textLight,
    fontFamily: 'Ranchers',
    fontSize: 48.0,
    letterSpacing: 3,
  );

  static const TextStyle _displayMediumDark = TextStyle(
    color: AppColors.textDark,
    fontFamily: 'Ranchers',
    fontSize: 48.0,
    letterSpacing: 3,
  );

  static const TextStyle _displaySmallLight = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 32.0,
    letterSpacing: 3,
  );

  static const TextStyle _displaySmallDark = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 32.0,
    letterSpacing: 3,
  );

  static const TextStyle _headlineLargeLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 48.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _headlineLargeDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 48.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _headlineMediumLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 32.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _headlineMediumDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 32.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _headlineSmallLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 24.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _headlineSmallDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 24.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _titleLargeLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 48.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleLargeDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 48.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleMediumLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleMediumDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 32.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleSmallLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _titleSmallDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle _bodyLargeLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _bodyLargeDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _bodyMediumLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 16.0,
  );

  static const TextStyle _bodyMediumDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 16.0,
  );

  static const TextStyle _bodySmallLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 13.0,
  );

  static const TextStyle _bodySmallDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 13.0,
  );

  static const TextStyle _labelLargeLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _labelLargeDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _labelMediumLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 13.0,
  );

  static const TextStyle _labelMediumDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 13.0,
  );

  static const TextStyle _labelSmallLight = TextStyle(
    color: AppColors.textLight,
    fontSize: 11.0,
  );

  static const TextStyle _labelSmallDark = TextStyle(
    color: AppColors.textDark,
    fontSize: 11.0,
  );
  // ---------------------------------------------

  // -- TEXT THEME -----------------------------
  /// Specific text theme to LightMode
  static const testThemeLight = TextTheme(
    displayLarge: _displayLargeLight,
    displayMedium: _displayMediumLight,
    displaySmall: _displaySmallLight,
    headlineLarge: _headlineLargeLight,
    headlineMedium: _headlineMediumLight,
    headlineSmall: _headlineSmallLight,
    titleLarge: _titleLargeLight,
    titleMedium: _titleMediumLight,
    titleSmall: _titleSmallLight,
    bodyLarge: _bodyLargeLight,
    bodyMedium: _bodyMediumLight,
    bodySmall: _bodySmallLight,
    labelLarge: _labelLargeLight,
    labelMedium: _labelMediumLight,
    labelSmall: _labelSmallLight,
  );

  /// Specific text theme to DarkMode
  static const testThemeDark = TextTheme(
    displayLarge: _displayLargeDark,
    displayMedium: _displayMediumDark,
    displaySmall: _displaySmallDark,
    headlineLarge: _headlineLargeDark,
    headlineMedium: _headlineMediumDark,
    headlineSmall: _headlineSmallDark,
    titleLarge: _titleLargeDark,
    titleMedium: _titleMediumDark,
    titleSmall: _titleSmallDark,
    bodyLarge: _bodyLargeDark,
    bodyMedium: _bodyMediumDark,
    bodySmall: _bodySmallDark,
    labelLarge: _labelLargeDark,
    labelMedium: _labelMediumDark,
    labelSmall: _labelSmallDark,
  );
  // ---------------------------------------------

  // -- COLOR SCHEME -----------------------------
  /// Specific color scheme to LightMode
  static const colorSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.primaryColor,
    onPrimary: AppColors.textDark,
    secondary: AppColors.secondaryColor,
    onSecondary: AppColors.textDark,
    tertiary: AppColors.contrastColor,
    onTertiary: AppColors.textDark,
    error: AppColors.errorColor,
    onError: AppColors.textDark,
    background: AppColors.backgroundColorLight,
    onBackground: AppColors.primaryColor,
    surface: AppColors.backgroundColorLight,
    onSurface: AppColors.textLight,
  );

  /// Specific color scheme to DarkMode
  static const colorSchemeDark = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.primaryColor,
    onPrimary: AppColors.textDark,
    secondary: AppColors.secondaryColor,
    onSecondary: AppColors.textDark,
    tertiary: AppColors.contrastColor,
    onTertiary: AppColors.textDark,
    error: AppColors.errorColor,
    onError: AppColors.textDark,
    background: AppColors.backgroundColorDark,
    onBackground: AppColors.primaryColor,
    surface: AppColors.backgroundColorDark,
    onSurface: AppColors.textDark,
  );
  // ---------------------------------------------

  // -- CARD THEME -----------------------------
  /// Specific color scheme to LightMode
  static const cardTheme = CardTheme(
    color: AppColors.primaryColor,
  );
  // ---------------------------------------------

  // -- ICON THEME -----------------------------
  /// Specific color scheme to LightMode
  static const iconTheme = IconThemeData(
    color: AppColors.primaryColor,
  );
  // ---------------------------------------------
}

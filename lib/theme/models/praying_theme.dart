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

  // ---- GET THEME EXTENSION ------------------
  static PrayingThemeExtension? of(BuildContext context) =>
      Theme.of(context).extension<PrayingThemeExtension>();

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

class PrayingThemeExtension extends ThemeExtension<PrayingThemeExtension> {
  static const TextStyle _titleLarge = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 80.0,
    letterSpacing: 3,
  );

  static const TextStyle _bodyHome = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _appBarTitle = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.w800,
  );

  static const TextStyle _tileTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _prayerTitle = TextStyle(
    color: AppColors.primaryColor,
    fontFamily: 'Ranchers',
    fontSize: 32.0,
    letterSpacing: 3,
  );

  static const TextStyle _prayerBody = TextStyle(
    fontSize: 18.0,
  );

  static const TextStyle _primaryButtonText = TextStyle(
    fontSize: 24.0,
    color: AppColors.textDark,
    fontWeight: FontWeight.w600,
  );

  final TextStyle titleLarge;
  final TextStyle bodyHome;
  final TextStyle appBarTitle;
  final TextStyle tileTitle;
  final TextStyle prayerTitle;
  final TextStyle prayerBody;
  final TextStyle primaryButtonText;

  PrayingThemeExtension({
    this.titleLarge = _titleLarge,
    this.bodyHome = _bodyHome,
    this.appBarTitle = _appBarTitle,
    this.tileTitle = _tileTitle,
    this.prayerTitle = _prayerTitle,
    this.prayerBody = _prayerBody,
    this.primaryButtonText = _primaryButtonText,
  });

  @override
  ThemeExtension<PrayingThemeExtension> copyWith({
    TextStyle? titleLarge,
    TextStyle? bodyHome,
    TextStyle? appBarTitle,
    TextStyle? tileTitle,
    TextStyle? prayerTitle,
    TextStyle? prayerBody,
    TextStyle? primaryButtonText,
  }) =>
      PrayingThemeExtension(
        titleLarge: titleLarge ?? this.titleLarge,
        bodyHome: bodyHome ?? this.bodyHome,
        appBarTitle: appBarTitle ?? this.appBarTitle,
        tileTitle: tileTitle ?? this.tileTitle,
        prayerTitle: prayerTitle ?? this.prayerTitle,
        prayerBody: prayerBody ?? this.prayerBody,
        primaryButtonText: primaryButtonText ?? this.primaryButtonText,
      );

  @override
  ThemeExtension<PrayingThemeExtension> lerp(
      covariant ThemeExtension<PrayingThemeExtension>? other, double t) {
    if (other is! PrayingThemeExtension) {
      return this;
    }
    return PrayingThemeExtension(
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t)!,
      bodyHome: TextStyle.lerp(bodyHome, other.bodyHome, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      tileTitle: TextStyle.lerp(tileTitle, other.tileTitle, t)!,
      prayerTitle: TextStyle.lerp(prayerTitle, other.prayerTitle, t)!,
      prayerBody: TextStyle.lerp(prayerBody, other.prayerBody, t)!,
      primaryButtonText: TextStyle.lerp(primaryButtonText, other.primaryButtonText, t)!,
    );
  }
}

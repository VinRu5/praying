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

  static const TextStyle _bodyText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _bodyBold = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w700,
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

  static const TextStyle _prayerBodyMedium = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle _prayerBodyItalic = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle _prayerBodyItalicBold = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle _primaryButtonText = TextStyle(
    fontSize: 24.0,
    color: AppColors.textDark,
    fontWeight: FontWeight.w600,
  );

  final TextStyle titleLarge;
  final TextStyle bodyText;
  final TextStyle bodyBold;
  final TextStyle appBarTitle;
  final TextStyle tileTitle;
  final TextStyle prayerTitle;
  final TextStyle prayerBody;
  final TextStyle prayerBodyMedium;
  final TextStyle prayerBodyItalic;
  final TextStyle prayerBodyItalicBold;
  final TextStyle primaryButtonText;

  PrayingThemeExtension({
    this.titleLarge = _titleLarge,
    this.bodyText = _bodyText,
    this.bodyBold = _bodyBold,
    this.appBarTitle = _appBarTitle,
    this.tileTitle = _tileTitle,
    this.prayerTitle = _prayerTitle,
    this.prayerBody = _prayerBody,
    this.prayerBodyMedium = _prayerBodyMedium,
    this.prayerBodyItalic = _prayerBodyItalic,
    this.prayerBodyItalicBold = _prayerBodyItalicBold,
    this.primaryButtonText = _primaryButtonText,
  });

  @override
  ThemeExtension<PrayingThemeExtension> copyWith({
    TextStyle? titleLarge,
    TextStyle? bodyText,
    TextStyle? bodyBold,
    TextStyle? appBarTitle,
    TextStyle? tileTitle,
    TextStyle? prayerTitle,
    TextStyle? prayerBody,
    TextStyle? prayerBodyMedium,
    TextStyle? prayerBodyItalic,
    TextStyle? prayerBodyItalicBold,
    TextStyle? primaryButtonText,
  }) =>
      PrayingThemeExtension(
        titleLarge: titleLarge ?? this.titleLarge,
        bodyText: bodyText ?? this.bodyText,
        bodyBold: bodyBold ?? this.bodyBold,
        appBarTitle: appBarTitle ?? this.appBarTitle,
        tileTitle: tileTitle ?? this.tileTitle,
        prayerTitle: prayerTitle ?? this.prayerTitle,
        prayerBody: prayerBody ?? this.prayerBody,
        prayerBodyMedium: prayerBodyMedium ?? this.prayerBodyMedium,
        prayerBodyItalic: prayerBodyItalic ?? this.prayerBodyItalic,
        prayerBodyItalicBold: prayerBodyItalicBold ?? this.prayerBodyItalicBold,
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
      bodyText: TextStyle.lerp(bodyText, other.bodyText, t)!,
      bodyBold: TextStyle.lerp(bodyBold, other.bodyBold, t)!,
      appBarTitle: TextStyle.lerp(appBarTitle, other.appBarTitle, t)!,
      tileTitle: TextStyle.lerp(tileTitle, other.tileTitle, t)!,
      prayerTitle: TextStyle.lerp(prayerTitle, other.prayerTitle, t)!,
      prayerBody: TextStyle.lerp(prayerBody, other.prayerBody, t)!,
      prayerBodyMedium: TextStyle.lerp(prayerBodyMedium, other.prayerBodyMedium, t)!,
      prayerBodyItalic: TextStyle.lerp(prayerBodyItalic, other.prayerBodyItalic, t)!,
      prayerBodyItalicBold: TextStyle.lerp(prayerBodyItalicBold, other.prayerBodyItalicBold, t)!,
      primaryButtonText: TextStyle.lerp(primaryButtonText, other.primaryButtonText, t)!,
    );
  }
}

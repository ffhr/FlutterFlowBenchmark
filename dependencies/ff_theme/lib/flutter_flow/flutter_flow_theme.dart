// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color background;
  late Color foreground;
  late Color card;
  late Color cardforeground;
  late Color popover;
  late Color popoverforeground;
  late Color primarycolor;
  late Color primaryforeground;
  late Color secondarycolor;
  late Color secondaryforeground;
  late Color muted;
  late Color mutedforeground;
  late Color accent;
  late Color accentforeground;
  late Color destructive;
  late Color destructiveforeground;
  late Color border;
  late Color input;
  late Color ring;
  late Color borderdestructive;
  late Color chart1;
  late Color chart2;
  late Color chart3;
  late Color chart4;
  late Color chart5;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFF18181B);
  late Color secondary = const Color(0xFF2563EB);
  late Color tertiary = const Color(0xFFE11D48);
  late Color alternate = const Color(0xFF18181B);
  late Color primaryText = const Color(0xFF020611);
  late Color secondaryText = const Color(0xFF6B7280);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFF3F4F6);
  late Color accent1 = const Color(0x2618181B);
  late Color accent2 = const Color(0x262563EB);
  late Color accent3 = const Color(0x26E11D48);
  late Color accent4 = const Color(0x2518181B);
  late Color success = const Color(0xFF15A44A);
  late Color warning = const Color(0xFFFACC17);
  late Color error = const Color(0xFFEE4444);
  late Color info = const Color(0xFFFFFFFF);

  late Color background = Color(0xFFFFFFFF);
  late Color foreground = Color(0xFF020611);
  late Color card = Color(0xFFFFFFFF);
  late Color cardforeground = Color(0xFF020611);
  late Color popover = Color(0xFFFFFFFF);
  late Color popoverforeground = Color(0xFF020611);
  late Color primarycolor = Color(0xFF18181B);
  late Color primaryforeground = Color(0xFFF8F9FA);
  late Color secondarycolor = Color(0xFFF3F4F6);
  late Color secondaryforeground = Color(0xFF111827);
  late Color muted = Color(0xFFF3F4F6);
  late Color mutedforeground = Color(0xFF6B7280);
  late Color accent = Color(0xFFF3F4F6);
  late Color accentforeground = Color(0xFF111827);
  late Color destructive = Color(0xFFEE4444);
  late Color destructiveforeground = Color(0xFFF8F9FA);
  late Color border = Color(0xFFE5E7EB);
  late Color input = Color(0xFFE5E7EB);
  late Color ring = Color(0xFFA1A1AA);
  late Color borderdestructive = Color(0x80EE4444);
  late Color chart1 = Color(0xFF2A9E90);
  late Color chart2 = Color(0xFFE76E51);
  late Color chart3 = Color(0xFF274754);
  late Color chart4 = Color(0xFFE8C468);
  late Color chart5 = Color(0xFFF4A462);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Geist';
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 48.0,
      );
  String get displayMediumFamily => 'Geist';
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 36.0,
      );
  String get displaySmallFamily => 'Geist';
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 30.0,
      );
  String get headlineLargeFamily => 'Geist';
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get headlineMediumFamily => 'Geist';
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get headlineSmallFamily => 'Geist';
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
      );
  String get titleLargeFamily => 'Geist';
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Geist';
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleSmallFamily => 'Geist';
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get labelLargeFamily => 'Geist';
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 22.0,
      );
  String get labelMediumFamily => 'Geist';
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 20.0,
      );
  String get labelSmallFamily => 'Geist';
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 18.0,
      );
  String get bodyLargeFamily => 'Geist';
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Geist';
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Geist';
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Geist',
        color: theme.primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFAFAFA);
  late Color secondary = const Color(0xFF3C82F7);
  late Color tertiary = const Color(0xFFE11D48);
  late Color alternate = const Color(0xFFFAFAFA);
  late Color primaryText = const Color(0xFFF8F9FA);
  late Color secondaryText = const Color(0xFF9CA2AE);
  late Color primaryBackground = const Color(0xFF020611);
  late Color secondaryBackground = const Color(0xFF1F2937);
  late Color accent1 = const Color(0x26FAFAFA);
  late Color accent2 = const Color(0x253C82F7);
  late Color accent3 = const Color(0x24E11D48);
  late Color accent4 = const Color(0x26FAFAFA);
  late Color success = const Color(0xFF22C55F);
  late Color warning = const Color(0xFFFACC17);
  late Color error = const Color(0xFF7F1D1D);
  late Color info = const Color(0xFF000000);

  late Color background = Color(0xFF020611);
  late Color foreground = Color(0xFFF8F9FA);
  late Color card = Color(0xFF020611);
  late Color cardforeground = Color(0xFFF8F9FA);
  late Color popover = Color(0xFF020611);
  late Color popoverforeground = Color(0xFFF8F9FA);
  late Color primarycolor = Color(0xFFFAFAFA);
  late Color primaryforeground = Color(0xFF020611);
  late Color secondarycolor = Color(0xFF1F2937);
  late Color secondaryforeground = Color(0xFFF8F9FA);
  late Color muted = Color(0xFF1F2937);
  late Color mutedforeground = Color(0xFF9CA2AE);
  late Color accent = Color(0xFF1F2937);
  late Color accentforeground = Color(0xFFF8F9FA);
  late Color destructive = Color(0xFF7F1D1D);
  late Color destructiveforeground = Color(0xFFF8F9FA);
  late Color border = Color(0xFF242F3E);
  late Color input = Color(0xFF1F2937);
  late Color ring = Color(0xFFA1A1AA);
  late Color borderdestructive = Color(0x807F1D1D);
  late Color chart1 = Color(0xFF2662D9);
  late Color chart2 = Color(0xFF2EB88A);
  late Color chart3 = Color(0xFFE88C30);
  late Color chart4 = Color(0xFFAF57DB);
  late Color chart5 = Color(0xFFE23670);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
              shadows: shadows,
            );
}

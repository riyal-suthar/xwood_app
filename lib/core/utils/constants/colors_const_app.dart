import 'dart:ui';

import 'package:flutter/material.dart';

class AppColorConst {
  // primary
  static const Color kprimary = Color(0xFF95622D);
  static const Color kSecondary = Color(0xFFEEE2CA);

  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kDarkBlue = Color(0xFF0B1520);
  static const Color kRedError = Color(0xFFD83631);
  static const Color kStarColor = Color(0xFFEDB31E);
  static const Color kStarBtnBgColor = Color(0xFFFFF9EB);
  // Grey scale
  static const Color kGrey100 = Color(0xFFD8D8D8);
  static const Color kGrey200 = Color(0xFF6D6D6D);
  static const Color kGrey300 = Color(0xFF262A2B);
  static const Color kGrey300_2 = Color(0xFF474747);
  static const Color kGrey400 = Color(0xFF0F1313);

  static const primary = Color(4285218571);
  static const surfaceTint = Color(4286862112);
  static const onPrimary = Color(4294967295);
  static const primaryContainer = Color(4287980077);
  static const onPrimaryContainer = Color(4294967295);
  static const secondary = Color(4284309087);
  static const onSecondary = Color(4294967295);
  static const secondaryContainer = Color(4292730333);
  static const onSecondaryContainer = Color(4282598725);
  static const tertiary = Color(4282993677);
  static const onTertiary = Color(4294967295);
  static const tertiaryContainer = Color(4285362479);
  static const onTertiaryContainer = Color(4294967295);
  static const error = Color(4288874257);
  static const onError = Color(4294967295);
  static const errorContainer = Color(4292359729);
  static const onErrorContainer = Color(4294967295);
  static const surface = Color(4294965493);
  static const onSurface = Color(4280294166);
  static const onSurfaceVariant = Color(4283515962);
  static const outline = Color(4286805096);
  static const outlineVariant = Color(4292199349);
  static const shadow = Color(4278190080);
  static const scrim = Color(4278190080);
  static const inverseSurface = Color(4281675562);
  static const inversePrimary = Color(4294621820);
  static const primaryFixed = Color(4294958271);
  static const onPrimaryFixed = Color(4281144832);
  static const primaryFixedDim = Color(4294621820);
  static const onPrimaryFixedVariant = Color(4285021193);
  static const secondaryFixed = Color(4293059298);
  static const onSecondaryFixed = Color(4279901212);
  static const secondaryFixedDim = Color(4291217094);
  static const onSecondaryFixedVariant = Color(4282730311);
  static const tertiaryFixed = Color(4293191832);
  static const onTertiaryFixed = Color(4279966976);
  static const tertiaryFixedDim = Color(4291284095);
  static const onTertiaryFixedVariant = Color(4282796554);
  static const surfaceDim = Color(4293122257);
  static const surfaceBright = Color(4294965493);
  static const surfaceContainerLowest = Color(4294967295);
  static const surfaceContainerLow = Color(4294832618);
  static const surfaceContainer = Color(4294438116);
  static const surfaceContainerHigh = Color(4294108895);
  static const surfaceContainerHighest = Color(4293714137);

  static const ktextfieldPrimary = Colors.grey;
  // static const Color kEBPrimary = Colors.grey.shade100;
}

/// Color convertor
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

extension MaterialCode on Color {
  MaterialColor toMaterialColor() {
    final List strengths = <double>[.05];
    final Map<int, Color> swatch = {};
    final r = red, g = green, b = blue;

    for (var i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(value, swatch);
  }
}

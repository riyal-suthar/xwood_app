import 'package:xwood/core/utils/constants/colors_const_app.dart';
import 'package:xwood/core/utils/constants/ui_const.dart';
import "package:flutter/material.dart";

class AppMaterialTheme {
  final TextTheme textTheme;

  const AppMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285218571),
      surfaceTint: Color(4286862112),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287980077),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284309087),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292730333),
      onSecondaryContainer: Color(4282598725),
      tertiary: Color(4282993677),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285362479),
      onTertiaryContainer: Color(4294967295),
      error: Color(4288874257),
      onError: Color(4294967295),
      errorContainer: Color(4292359729),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4280294166),
      onSurfaceVariant: Color(4283515962),
      outline: Color(4286805096),
      outlineVariant: Color(4292199349),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281675562),
      inversePrimary: Color(4294621820),
      primaryFixed: Color(4294958271),
      onPrimaryFixed: Color(4281144832),
      primaryFixedDim: Color(4294621820),
      onPrimaryFixedVariant: Color(4285021193),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279901212),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4282730311),
      tertiaryFixed: Color(4293191832),
      onTertiaryFixed: Color(4279966976),
      tertiaryFixedDim: Color(4291284095),
      onTertiaryFixedVariant: Color(4282796554),
      surfaceDim: Color(4293122257),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294832618),
      surfaceContainer: Color(4294438116),
      surfaceContainerHigh: Color(4294108895),
      surfaceContainerHighest: Color(4293714137),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294621820),
      surfaceTint: Color(4294621820),
      onPrimary: Color(4283049984),
      primaryContainer: Color(4287256869),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4294967295),
      onSecondary: Color(4281282865),
      secondaryContainer: Color(4292138196),
      onSecondaryContainer: Color(4282269504),
      tertiary: Color(4291284095),
      onTertiary: Color(4281348864),
      tertiaryContainer: Color(4284704550),
      onTertiaryContainer: Color(4294967295),
      error: Color(4294948011),
      onError: Color(4285071366),
      errorContainer: Color(4291570986),
      onErrorContainer: Color(4294967295),
      surface: Color(4279702030),
      onSurface: Color(4293714137),
      onSurfaceVariant: Color(4292199349),
      outline: Color(4288581249),
      outlineVariant: Color(4283515962),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293714137),
      inversePrimary: Color(4286862112),
      primaryFixed: Color(4294958271),
      onPrimaryFixed: Color(4281144832),
      primaryFixedDim: Color(4294621820),
      onPrimaryFixedVariant: Color(4285021193),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279901212),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4282730311),
      tertiaryFixed: Color(4293191832),
      onTertiaryFixed: Color(4279966976),
      tertiaryFixedDim: Color(4291284095),
      onTertiaryFixedVariant: Color(4282796554),
      surfaceDim: Color(4279702030),
      surfaceBright: Color(4282267699),
      surfaceContainerLowest: Color(4279373065),
      surfaceContainerLow: Color(4280294166),
      surfaceContainer: Color(4280557338),
      surfaceContainerHigh: Color(4281280804),
      surfaceContainerHighest: Color(4282004527),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950528),
      surfaceTint: Color(4294621820),
      onPrimary: Color(4280619264),
      primaryContainer: Color(4290676044),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294967295),
      onSecondary: Color(4281282865),
      secondaryContainer: Color(4292138196),
      onSecondaryContainer: Color(4280164384),
      tertiary: Color(4291612803),
      onTertiary: Color(4279638016),
      tertiaryContainer: Color(4287731023),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949554),
      onError: Color(4281794562),
      errorContainer: Color(4294923339),
      onErrorContainer: Color(4278190080),
      surface: Color(4279702030),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292528057),
      outline: Color(4289831059),
      outlineVariant: Color(4287660148),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293714137),
      inversePrimary: Color(4285087242),
      primaryFixed: Color(4294958271),
      onPrimaryFixed: Color(4280159488),
      primaryFixedDim: Color(4294621820),
      onPrimaryFixedVariant: Color(4283641088),
      secondaryFixed: Color(4293059298),
      onSecondaryFixed: Color(4279243026),
      secondaryFixedDim: Color(4291217094),
      onSecondaryFixedVariant: Color(4281677367),
      tertiaryFixed: Color(4293191832),
      onTertiaryFixed: Color(4279308800),
      tertiaryFixedDim: Color(4291284095),
      onTertiaryFixedVariant: Color(4281743616),
      surfaceDim: Color(4279702030),
      surfaceBright: Color(4282267699),
      surfaceContainerLowest: Color(4279373065),
      surfaceContainerLow: Color(4280294166),
      surfaceContainer: Color(4280557338),
      surfaceContainerHigh: Color(4281280804),
      surfaceContainerHighest: Color(4282004527),
    );
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    fontFamily: "Geologica",
    // textTheme: TextTheme(
    //   //
    //   // ),
    //   //   .copyWith(
    //   labelSmall: TextStyle(color: AppColorConst.primary, fontSize: 10),
    //   labelLarge: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 12,
    //     fontWeight: FontWeight.w600,
    //   ),
    //   bodySmall: TextStyle(
    //     color: AppColorConst.scrim,
    //     fontSize: 12,
    //     fontWeight: FontWeight.w300,
    //   ),
    //   bodyMedium: TextStyle(color: AppColorConst.scrim, fontSize: 40),
    //   bodyLarge: TextStyle(
    //     color: AppColorConst.ktextfieldPrimary,
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //   ),
    //   titleSmall: TextStyle(
    //     color: AppColorConst.ktextfieldPrimary.shade200,
    //     fontSize: 14,
    //     fontWeight: FontWeight.w400,
    //   ),
    //   titleMedium: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 16,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   titleLarge: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 20,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   headlineMedium: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 18,
    //     fontWeight: FontWeight.w500,
    //   ),
    //   headlineLarge: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 24,
    //     fontWeight: FontWeight.w700,
    //   ),
    //   displayLarge: TextStyle(
    //     color: AppColorConst.primary,
    //     fontSize: 26,
    //     fontWeight: FontWeight.w700,
    //   ),
    // ),
    bottomNavigationBarTheme: _navigationBarTheme,
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );

  // var fontGeolica = GoogleFonts.geologicaTextTheme();
  static final TextTheme _lightTextTheme = TextTheme(
    labelSmall: TextStyle(color: AppColorConst.primary, fontSize: 10),
    labelLarge: TextStyle(
      color: AppColorConst.primary,
      fontSize: 12,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(color: AppColorConst.primary, fontSize: 12),
    bodyMedium: TextStyle(color: AppColorConst.primary, fontSize: 14),
    bodyLarge: TextStyle(color: AppColorConst.primary, fontSize: 16),
    titleSmall: TextStyle(
      color: AppColorConst.ktextfieldPrimary.shade200,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      color: AppColorConst.primary,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: AppColorConst.primary,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: AppColorConst.primary,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    headlineLarge: TextStyle(
      color: AppColorConst.primary,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    displayLarge: TextStyle(
      color: AppColorConst.primary,
      fontSize: 26,
      fontWeight: FontWeight.w700,
    ),
  );

  static final BottomNavigationBarThemeData _navigationBarTheme =
      BottomNavigationBarThemeData(
        backgroundColor: AppColorConst.scrim,
        selectedIconTheme: IconThemeData(color: AppColorConst.kGrey300),
        unselectedIconTheme: IconThemeData(color: AppColorConst.kSecondary),
        selectedLabelStyle: TextStyle(
          color: HexColor("#FFFFFF"),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        showUnselectedLabels: true,
        showSelectedLabels: true,
      );

  static const InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.all(radius12)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius12),
          borderSide: BorderSide(color: AppColorConst.ktextfieldPrimary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius12),
          borderSide: BorderSide(color: AppColorConst.scrim),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius12),
          borderSide: BorderSide(color: AppColorConst.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(radius12),
          borderSide: BorderSide(color: AppColorConst.error),
        ),
      );

  static final ButtonThemeData _lightButtonTheme = ButtonThemeData(
    buttonColor: AppColorConst.primary,
    disabledColor: AppColorConst.secondary,
    height: 52,
  );
}

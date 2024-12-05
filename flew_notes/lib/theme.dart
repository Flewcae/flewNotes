import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279855954),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289065683),
      onPrimaryContainer: Color(4278198550),
      secondary: Color(4283196249),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291750363),
      onSecondaryContainer: Color(4278722584),
      tertiary: Color(4284899348),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4293846668),
      onTertiaryContainer: Color(4280228864),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294310902),
      onSurface: Color(4279704858),
      onSurfaceVariant: Color(4282403140),
      outline: Color(4285561204),
      outlineVariant: Color(4290759106),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4287289016),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278198550),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278210876),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278722584),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4281683010),
      tertiaryFixed: Color(4293846668),
      onTertiaryFixed: Color(4280228864),
      tertiaryFixedDim: Color(4291938675),
      onTertiaryFixedVariant: Color(4283254784),
      surfaceDim: Color(4292205527),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916144),
      surfaceContainer: Color(4293521386),
      surfaceContainerHigh: Color(4293192421),
      surfaceContainerHighest: Color(4292797663),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278209849),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281696872),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281419838),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284643951),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282991616),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286347050),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310902),
      onSurface: Color(4279704858),
      onSurfaceVariant: Color(4282139968),
      outline: Color(4283982172),
      outlineVariant: Color(4285758839),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4287289016),
      primaryFixed: Color(4281696872),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279593040),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284643951),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282999127),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4286347050),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4284702226),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205527),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916144),
      surfaceContainer: Color(4293521386),
      surfaceContainerHigh: Color(4293192421),
      surfaceContainerHighest: Color(4292797663),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200348),
      surfaceTint: Color(4279855954),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209849),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279248414),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281419838),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280689408),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282991616),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294310902),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280100386),
      outline: Color(4282139968),
      outlineVariant: Color(4282139968),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281086511),
      inversePrimary: Color(4289723612),
      primaryFixed: Color(4278209849),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203430),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281419838),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279906600),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282991616),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281413120),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205527),
      surfaceBright: Color(4294310902),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916144),
      surfaceContainer: Color(4293521386),
      surfaceContainerHigh: Color(4293192421),
      surfaceContainerHighest: Color(4292797663),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287289016),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278204457),
      primaryContainer: Color(4278210876),
      onPrimaryContainer: Color(4289065683),
      secondary: Color(4289973440),
      onSecondary: Color(4280169772),
      secondaryContainer: Color(4281683010),
      onSecondaryContainer: Color(4291750363),
      tertiary: Color(4291938675),
      onTertiary: Color(4281676032),
      tertiaryContainer: Color(4283254784),
      onTertiaryContainer: Color(4293846668),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279178514),
      onSurface: Color(4292797663),
      onSurfaceVariant: Color(4290759106),
      outline: Color(4287206285),
      outlineVariant: Color(4282403140),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4279855954),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278198550),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278210876),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278722584),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4281683010),
      tertiaryFixed: Color(4293846668),
      onTertiaryFixed: Color(4280228864),
      tertiaryFixedDim: Color(4291938675),
      onTertiaryFixedVariant: Color(4283254784),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4281613111),
      surfaceContainerLowest: Color(4278849293),
      surfaceContainerLow: Color(4279704858),
      surfaceContainer: Color(4279968030),
      surfaceContainerHigh: Color(4280625960),
      surfaceContainerHighest: Color(4281349683),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4287552188),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278197010),
      primaryContainer: Color(4283735683),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290236868),
      onSecondary: Color(4278458898),
      secondaryContainer: Color(4286420619),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292202103),
      onTertiary: Color(4279834368),
      tertiaryContainer: Color(4288254787),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178514),
      onSurface: Color(4294376695),
      onSurfaceVariant: Color(4291022279),
      outline: Color(4288390559),
      outlineVariant: Color(4286350720),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4278211133),
      primaryFixed: Color(4289065683),
      onPrimaryFixed: Color(4278195469),
      primaryFixedDim: Color(4287289016),
      onPrimaryFixedVariant: Color(4278205998),
      secondaryFixed: Color(4291750363),
      onSecondaryFixed: Color(4278195469),
      secondaryFixedDim: Color(4289973440),
      onSecondaryFixedVariant: Color(4280564530),
      tertiaryFixed: Color(4293846668),
      onTertiaryFixed: Color(4279439872),
      tertiaryFixedDim: Color(4291938675),
      onTertiaryFixedVariant: Color(4282070784),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4281613111),
      surfaceContainerLowest: Color(4278849293),
      surfaceContainerLow: Color(4279704858),
      surfaceContainer: Color(4279968030),
      surfaceContainerHigh: Color(4280625960),
      surfaceContainerHighest: Color(4281349683),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293787637),
      surfaceTint: Color(4287289016),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4287552188),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293787637),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290236868),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966000),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292202103),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279178514),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180342),
      outline: Color(4291022279),
      outlineVariant: Color(4291022279),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292797663),
      inversePrimary: Color(4278202659),
      primaryFixed: Color(4289329111),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4287552188),
      onPrimaryFixedVariant: Color(4278197010),
      secondaryFixed: Color(4292079071),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290236868),
      onSecondaryFixedVariant: Color(4278458898),
      tertiaryFixed: Color(4294109840),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4292202103),
      onTertiaryFixedVariant: Color(4279834368),
      surfaceDim: Color(4279178514),
      surfaceBright: Color(4281613111),
      surfaceContainerLowest: Color(4278849293),
      surfaceContainerLow: Color(4279704858),
      surfaceContainer: Color(4279968030),
      surfaceContainerHigh: Color(4280625960),
      surfaceContainerHighest: Color(4281349683),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

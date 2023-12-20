part of 'core.dart';

enum ThemeType { light, dark }

class AppDecoration {
  static OutlineInputBorder textFormFieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(),
  );
}

class AppColors {
  static const Color white = Color.fromARGB(255, 255, 255, 255);
  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color transparent = Color.fromARGB(0, 0, 0, 0);
  static const Color orange = Color(0xFFF77737);
  static const Color green = Color(0xFF33AE1E);
}

class AppColorsLight {
  static const Color primary = AppColors.orange;
}

class AppColorsDark {
  static const Color primary = AppColors.orange;
}

class AppThemes {
  static const TextStyle lightBaseTextStyle =
      TextStyle(color: Colors.black, fontFamily: 'Yekan');

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    primaryColor: AppColorsLight.primary,
    textTheme: TextTheme(
      displayLarge: lightBaseTextStyle.copyWith(
          fontSize: 57, fontWeight: FontWeight.w400),
      displayMedium: lightBaseTextStyle.copyWith(
          fontSize: 45, fontWeight: FontWeight.w400),
      displaySmall: lightBaseTextStyle.copyWith(
          fontSize: 36, fontWeight: FontWeight.w400),
      headlineLarge: lightBaseTextStyle.copyWith(
          fontSize: 32, fontWeight: FontWeight.w400),
      headlineMedium: lightBaseTextStyle.copyWith(
          fontSize: 28, fontWeight: FontWeight.w400),
      headlineSmall: lightBaseTextStyle.copyWith(
          fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: lightBaseTextStyle.copyWith(
          fontSize: 22, fontWeight: FontWeight.w400),
      titleMedium: lightBaseTextStyle.copyWith(
          fontSize: 16, fontWeight: FontWeight.w400),
      titleSmall: lightBaseTextStyle.copyWith(
          fontSize: 14, fontWeight: FontWeight.w400),
      bodyLarge: lightBaseTextStyle.copyWith(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: lightBaseTextStyle.copyWith(
          fontSize: 14, letterSpacing: 0.25, fontWeight: FontWeight.w400),
      bodySmall: lightBaseTextStyle.copyWith(
          fontSize: 12, fontWeight: FontWeight.w400),
      labelLarge: lightBaseTextStyle.copyWith(
          fontSize: 14, letterSpacing: 0.1, fontWeight: FontWeight.w500),
      labelMedium: lightBaseTextStyle.copyWith(
          fontSize: 12, letterSpacing: 0.5, fontWeight: FontWeight.w500),
      labelSmall: lightBaseTextStyle.copyWith(
          fontSize: 11, letterSpacing: 0.5, fontWeight: FontWeight.w500),
    ),
    cardTheme: const CardTheme(),
    appBarTheme: AppBarTheme(
      color: AppColorsLight.primary,
      elevation: 0,
      foregroundColor: Colors.white,
      titleTextStyle: lightBaseTextStyle.copyWith(
          fontSize: 24, fontWeight: FontWeight.w700),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColorsLight.primary,
        foregroundColor: AppColors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ),
    textButtonTheme: const TextButtonThemeData(),
    colorScheme:
        const ColorScheme.light(primary: Color.fromARGB(255, 0, 158, 202)),
    outlinedButtonTheme: const OutlinedButtonThemeData(),
    tabBarTheme: const TabBarTheme(),
    expansionTileTheme: const ExpansionTileThemeData(
        tilePadding: EdgeInsets.zero,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        textColor: Colors.black,
        collapsedTextColor: Colors.black),
    drawerTheme: const DrawerThemeData(),
    dataTableTheme: const DataTableThemeData(),
    checkboxTheme: const CheckboxThemeData(),
    scrollbarTheme: const ScrollbarThemeData(),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.black,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    ),
    unselectedWidgetColor: Colors.black,
  );
}

class AppImages {
  static const String _base = "assets/images";

  static const String map = "$_base/map.png";

  static const String imagesAfrica = "assets/images/africa.jpg";

  static const String imagesAnimals = "assets/images/animals.jpg";

  static const String imagesAntarctica = "assets/images/antarctica.jpg";

  static const String imagesAsia = "assets/images/asia.jpg";

  static const String imagesAustralia = "assets/images/australia.jpg";

  static const String imagesBackground = "assets/images/background.png";

  static const String imagesCover = "assets/images/cover.jpg";

  static const String imagesEurope = "assets/images/europe.jpg";

  static const String imagesNorthAmerica = "assets/images/north_america.jpg";

  static const String imagesPhotography = "assets/images/photography.jpeg";

  static const String imagesSouthAmerica = "assets/images/south_america.jpg";

  static const String imagesTest1 = "assets/images/test1.jpeg";

  static const String imagesTest2 = "assets/images/test2.jpeg";

  static const String imagesTest3 = "assets/images/test3.jpeg";

  static const String imagesTrekking = "assets/images/trekking.jpg";
}

class AppIcons {
  static const String _base = "assets/icons";
  static const String activity = "$_base/activity.svg";
}

class AppModels {
  static const String _base = "assets/models";
  static const String animalCell = "$_base/animal_cell.glb";
  static const String heart = "$_base/heart.glb";
  static const String solarSystem = "$_base/solar_system.glb";
}

class AppGifs {
  static const String _base = "assets/gifs";
  static const String live = "$_base/live.json";
}

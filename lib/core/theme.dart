import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return isDarkTheme
        ? ThemeData(
            scaffoldBackgroundColor: const Color(0xFF343541),
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple,
            dividerColor: Colors.white,
            disabledColor: Colors.grey,
            cardColor: const Color(0xFF444654),
            canvasColor: Colors.black,
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 37, 38, 42),
            ),
            buttonTheme: Theme.of(context)
                .buttonTheme
                .copyWith(colorScheme: const ColorScheme.dark()))
        : ThemeData(
            scaffoldBackgroundColor: Colors.grey.shade300,
            primarySwatch: Colors.purple,
            primaryColorDark: Colors.deepPurple,
            dividerColor: Colors.black,
            disabledColor: Colors.grey,
            cardColor: Colors.grey[50],
            canvasColor: Colors.grey[50],
            brightness: Brightness.light,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
            ),
            buttonTheme: Theme.of(context)
                .buttonTheme
                .copyWith(colorScheme: const ColorScheme.light()));
  }
}

class AppImages {
  static const String _base = "assets/images";
  static const String heavyRain = "$_base/map.png";
  
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
import 'package:flutter/material.dart';
import 'package:portfolio_web/consonant/appcoulour.dart';

class Apptheme{
  Apptheme._();

  static ThemeData lighttheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    fontFamily: "Popins",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize:Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )

      )
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(200, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    )

  );
}
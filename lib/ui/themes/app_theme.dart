import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poc_valuenotifier/ui/themes/app_button_theme.dart';

class AppTheme {
  static ThemeData buildTheme(BuildContext context) {
    const primaryColor = Colors.green;

    return ThemeData(
      primaryColor: primaryColor,
      // Exemplos de tema global
      appBarTheme: const AppBarTheme(
        elevation: 0,
        // Controla a cor da status bar
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: IconThemeData(color: primaryColor),
        titleTextStyle: TextStyle(color: primaryColor, fontSize: 23),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        focusColor: primaryColor,
      ),

      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: primaryColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

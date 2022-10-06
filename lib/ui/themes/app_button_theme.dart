import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary;

  ButtonStyle toStyle(BuildContext context) {
    switch (this) {
      case ButtonType.primary:
        return AppButtonTheme.buildPrimary(context);
      case ButtonType.secondary:
        return AppButtonTheme.buildSecondary(context);
    }
  }
}

class AppButtonTheme {
  static ButtonStyle buildPrimary(BuildContext context) {
    return TextButton.styleFrom(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Colors.white,
    );
  }

  static ButtonStyle buildSecondary(BuildContext context) {
    return TextButton.styleFrom(
      elevation: 10,
      backgroundColor: Colors.grey,
      foregroundColor: Colors.white,
    );
  }
}

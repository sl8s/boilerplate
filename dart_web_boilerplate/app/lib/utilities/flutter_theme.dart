import 'package:dart_web_boilerplate/utilities/themes/base_theme.dart';
import 'package:dart_web_boilerplate/utilities/themes/dark_theme.dart';
import 'package:dart_web_boilerplate/utilities/themes/light_theme.dart';
import 'package:flutter/material.dart';

@immutable
final class FlutterTheme {
  const FlutterTheme._();

  static BaseTheme getTheme(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return DarkTheme();
    }
    return LightTheme();
  }
}

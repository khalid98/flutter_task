import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get themeData => Theme.of(this);
}
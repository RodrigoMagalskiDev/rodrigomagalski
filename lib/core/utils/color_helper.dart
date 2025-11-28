import 'package:flutter/material.dart';

extension ColorHelper on BuildContext {
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;
}

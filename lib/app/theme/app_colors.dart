import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static bool get isDark => Get.context?.theme.brightness == Brightness.dark;

  static get black => isDark ? Colors.white : Colors.black;

  static get yellow => isDark ? const Color(0xFFFFD54F) : Colors.yellow;

  static get grey => isDark ? Colors.grey[300]! : Colors.grey[800]!;

  static get red => isDark ? const Color(0xFFFF8A80) : Colors.red;

  static get iceyBlue =>
      isDark ? const Color(0xFF81D4FA) : const Color(0xFF4B7EC2);
  static const transparent = Colors.transparent;
}

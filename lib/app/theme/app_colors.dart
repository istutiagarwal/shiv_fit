import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static bool get isDark => Get.context?.theme.brightness == Brightness.dark;

  static get black => isDark ? Colors.white : Colors.black;
  static get cWhite => isDark ? Colors.black : Colors.white;

  static get yellow => isDark ? const Color(0xFFFFD54F) : Colors.yellow[800];

  static get grey => isDark ? Colors.grey[300]! : Colors.grey[600]!;

  static get red => isDark ? const Color(0xFFFF8A80) : Colors.red;
  static  get blue =>  Colors.blue;
  static get white =>  Colors.white;
  static get mistGrey => Colors.grey[350];

  static get iceyBlue =>
      isDark ? const Color(0xFF81D4FA) : const Color(0xFF4B7EC2);
  static const transparent = Colors.transparent;
  static get  gradientColors => isDark
      ? [Color(0xFF1E293B), Color(0xFF334155)]
      : [Color(0xFFE3EAF5),
    Color(0xFFDDE3ED),];
  static get lightGrey => Color(0xFFD3D3D3);
  static get oliveGreen => isDark ? Color(0xFF8BC34A) : Color(0xFF689F38);

}

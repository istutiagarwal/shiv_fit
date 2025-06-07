import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'app_colors.dart';

class Styles {
  static const _fontFamily = 'Poppins';

  static TextStyle blackRegular(double size,Color color) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle blackBold(double size, Color color) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle blackItalic(double size,Color color) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: color,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle blackMedium(double size,Color color) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }
}


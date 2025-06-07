import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'app_colors.dart';

class Styles {
  static const _fontFamily = 'Poppins';
  static const double _defaultSize = 18.0;

  static TextStyle blackRegular([double size = _defaultSize]) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle blackBold([double size = _defaultSize]) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle blackItalic([double size = _defaultSize]) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: AppColors.black,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle blackMedium([double size = _defaultSize]) {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: size,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle blackBold12() {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: AppDimens.dimens_12,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle blackRegular12() {
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: AppDimens.dimens_12,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
    );
  }
}


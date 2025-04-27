import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'colorManager.dart';
import 'fontManager.dart';

class styleManager {
  static TextStyle _createTextStyle(double fontSize, FontWeight fontWeight, Color color,
      {TextDecoration? decoration , double? height }) {
    if (colorManager.primaryFontColor == null) colorManager.setColorSchema();

    return TextStyle(
      fontFamily: fontManager.fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      height: height ?? 1,
    );
  }

  static TextStyle normal({double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
    return _createTextStyle(
      fontSize ?? fontSizetManager.font16,
      fontWeight ?? fontWeightManager.fontRegular,
      color ?? colorManager.primaryFontColor!,
      height: height ?? 1,
    );
  }

  static TextStyle normalBold({double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
    return _createTextStyle(
      fontSize ?? fontSizetManager.font16,
      fontWeight ?? fontWeightManager.fontBold,
      color ?? colorManager.primaryFontColor?? Colors.blue,
      height: height ?? 1,
    );
  }

  static TextStyle link({double? fontSize, FontWeight? fontWeight, Color? color,
    TextDecoration? decoration, double? height}) {
    return _createTextStyle(
      fontSize ?? fontSizetManager.font16,
      fontWeight ?? fontWeightManager.fontBold,
      color ?? colorManager.primaryFontColor!,
      decoration: decoration ?? TextDecoration.underline,
      height: height ?? 1,
    );
  }

  static TextStyle hintLable({double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
    return _createTextStyle(
      fontSize ?? fontSizetManager.font16,
      fontWeight ?? fontWeightManager.fontRegular,
      color ?? colorManager.lableHintsColor!,
      height: height ?? 1,
    );
  }
}

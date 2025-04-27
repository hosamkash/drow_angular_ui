import 'dart:ui';

class colorManager {
  static Color? primaryColor;
  static Color? primaryColorLight;
  static Color? secondColor;
  static Color? backgroundScreensColor;
  static Color? lableHintsColor;
  static Color? boarderControlColor;
  static Color? primaryFontColor;
  static Color? backgroundEditors;
  static Color? black = Color(0xff000000);
  static Color? grayLight = Color(0xc7eae9e9);
  static Color? deleteIconColor;
  static Color? appConnectedColorGreen;
  static Color? appDisConnectedColorRed;
  static Color? disabledColor;

  static setColorSchema() {
    // if (sharedConst.appThemeType == en_ThemeType.LightTheme) {
    primaryColor = Color(0xff0b51e5);
    primaryColorLight = Color(0xcf63b8f5);
    secondColor = Color(0x889ed4fc);
    backgroundScreensColor = Color(0xffffffff);
    lableHintsColor = Color(0x73727070);
    boarderControlColor = Color(0xff9b9898);
    primaryFontColor = Color(0xff000000);
    backgroundEditors = Color(0xffFFFFFF);
    deleteIconColor = Color(0xfff44336);
    appConnectedColorGreen = Color(0xff4CAF50);
    appDisConnectedColorRed = Color(0xffF44336);
    disabledColor = Color(0xffB0BEC5);
    // }
    //
    // //--------------------------------------------
    //
    // else if (sharedConst.appThemeType == en_ThemeType.DarkTheme) {
    //   primaryColor = Color(0xfff80606);
    //   primaryColorLight = Color(0xecfd6363);
    //   secondColor = Color(0x56f80606);
    //   backgroundScreensColor = Color(0xffffffff);
    //   lableHintsColor = Color(0x73727070);
    //   boarderControlColor = Color(0xffDDDDDD);
    //   primaryFontColor = Color(0xff000000);
    //   backgroundEditors = Color(0xffFFFFFF);
    //   deleteIconColor = Color(0xff0b51e5);
    //   appConnectedColorGreen = Color(0xff2fad1c);
    //   appDisConnectedColorRed = Color(0xfff80606);
    //   disabledColor = Color(0xffbbb7b7);
    // }
    // //--------------------------------------------
    //
    // else if (sharedConst.appThemeType == en_ThemeType.CustomTheme) {
    //   primaryColor = Color(0xff4f2708);
    //   primaryColorLight = Color(0xffbe7439);
    //   secondColor = Color(0x88e1b38d);
    //   backgroundScreensColor = Color(0xffffffff);
    //   lableHintsColor = Color(0xffff9340);
    //   boarderControlColor = Color(0xffDDDDDD);
    //   primaryFontColor = Color(0xff52361e);
    //   backgroundEditors = Color(0xffFFFFFF);
    //   deleteIconColor = Color(0x88b27949);
    //   appConnectedColorGreen = Color(0xff2fad1c);
    //   appDisConnectedColorRed = Color(0xfff80606);
    //   disabledColor = Color(0xffbbb7b7);
    // }
  }
}

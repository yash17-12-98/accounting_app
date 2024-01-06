import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#7FC4DC");
  static Color primaryOpacity70 = HexColor.fromHex("#B37FC4DC");
  static Color splashPrimary = HexColor.fromHex("#E5E6EE");

  static Color lightGrey = HexColor.fromHex("#B9BAC8");
  static Color darkGrey = HexColor.fromHex("#8791A3");
  static Color mediumGrey = HexColor.fromHex("#6B7285");
  static Color grey = HexColor.fromHex("#737477");

  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
  static Color black = HexColor.fromHex("#000000");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

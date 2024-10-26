import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF002E44);
const Color secondaryColor = Color(0xFF005B7A);
const Color accentColorAmber = Color(0xFF04B9D4);
const Color accentColorRed = Color(0xFFE3252D);
const Color accentColorGreen = Color(0xFF0CAC2C);
const Color fontPrimaryBlack = Color(0xFF000000);
const Color fontPrimaryWhite = Color(0xFFFFFFFF);

extension HexColor on String {
  Color toColor() {
    final hex = replaceAll('#', '');
    return Color(int.parse('FF$hex', radix: 16));
  }
}

LinearGradient customGradient(String startHex, String endHex) {
  return LinearGradient(
    colors: [
      startHex.toColor(),
      endHex.toColor(),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
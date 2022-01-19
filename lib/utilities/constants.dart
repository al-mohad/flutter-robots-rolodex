import 'dart:ui';

import 'package:flutter/material.dart';

class ColorPalette {
  static Color black = const Color(0xFF000000);
  static Color deepPurple = const Color(0xff150050);
  static Color darkPurple = const Color(0xff3F0071);
  static Color lightPurple = const Color(0xff610094);
  static Color purple = const Color(0xff7F00A8);
}

const kBorderRadius = 12;
const kBoxDecoration = BoxDecoration(
  color: Color(0xff3F0071),
  // borderRadius: BorderRadius.circular(12),
  boxShadow: [
    BoxShadow(
      color: Color(0xff610094),
      offset: Offset(-4, -4),
      blurRadius: 5,
      spreadRadius: 1,
    ),
    BoxShadow(
      color: Color(0xff150050),
      offset: Offset(4, 4),
      blurRadius: 5,
      spreadRadius: 1,
    ),
  ],
);

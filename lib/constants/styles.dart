import 'package:flutter/material.dart';

class AppStyles {
  Color color1 = const Color(0xFF1C39A1);
  Color color2 = const Color(0xFF8BE1DE);
}

class CustomTextStyles {
  static const TextStyle s16w400cb = TextStyle(
    color: Colors.black,
    fontFamily: 'Oswald',
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle s12w400cw = TextStyle(
    color: Colors.white,
    fontSize: 12.0,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
}

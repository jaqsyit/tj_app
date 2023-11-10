import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF1C39A1);
  static const Color secondary = Color(0xFF8BE1DE);
  static const Color primaryDark = Color(0xFF122361);
}

class AppTextStyles {
  
  static const TextStyle s12w400cw = TextStyle(
    fontFamily: 'Inter',
    color: Colors.white,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle s14w600cw = TextStyle(
    fontFamily: 'Inter',
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s16w400cb = TextStyle(
    fontFamily: 'Oswald',
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle s18w500cPrimary = TextStyle(
    fontFamily: 'Inter',
    color: AppColors.primary,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle s18w400cb = TextStyle(
    fontFamily: 'Inter',
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle s18w500cw = TextStyle(
    fontFamily: 'Inter',
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle s20w600cb = TextStyle(
    fontFamily: 'Inter',
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s28w600cb = TextStyle(
    fontFamily: 'Inter',
    color: Colors.black,
    fontSize: 28.0,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle s32w600cb = TextStyle(
    fontFamily: 'Inter',
    color: Colors.black,
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
  );
}

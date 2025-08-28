import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class TTextTheme{
  TTextTheme._();
  static TextTheme LightTextTheme =TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium: TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),
    headlineSmall: TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),

    titleLarge: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),
    titleMedium: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),
    titleSmall: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),

    bodyLarge: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),
    bodyMedium: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),
    bodySmall: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),

    labelLarge: TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),
    labelMedium: TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black),
    labelSmall:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.grey),









  );
  static TextTheme DarkTextTheme =TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.white),
    headlineMedium: TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.white),
    headlineSmall: TextStyle().copyWith(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white),

    titleLarge: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),
    titleMedium: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),
    titleSmall: TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),

    bodyLarge: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
    bodyMedium: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),
    bodySmall: TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white),

    labelLarge: TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),
    labelMedium: TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.white),


  );

}
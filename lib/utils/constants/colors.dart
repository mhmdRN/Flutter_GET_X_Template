import 'package:flutter/material.dart';

class AppColors{

  AppColors._(); //to avoid creating objects from it (private constructor)

  // App Basic Colors
  static const Color appPrimaryColor = Color(0xFF4b68ff);
  static const Color appSecondaryColor = Color(0xFFffe24b);
  static const Color appAccentColor = Color(0xFFb0c7ff);

  // Text Colors
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6c757d);
  static const Color textWhiteColor = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFf6f6f6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xfff3f5ff);
  static const Color primary = Color(0xff1d37b4);

  // Background Container Colors
 static const Color lightContainer = Color(0xFFf6f6f6);
 static  Color darkContainer = Colors.white.withOpacity(0.1);

 //Button Colors
 static const Color buttonPrimaryColor = Color(0xFF4b68ff);
 static const Color buttonSecondaryColor = Color(0xFF6c757d);
 static const Color buttonDisabledColor = Color(0xFFc4c4c4);

 //Error and Validation Colors
 static const Color errorColor = Color(0xFFd32f2f);
 static const Color successColor = Color(0xFF388e3c);
 static const Color warningColor = Color(0xFFf57c00);
 static const Color infoColor = Color(0xFF1976d2);

 // Neutral Colors
 static const Color black = Color(0xFF232323);
 static const Color darkerGrey = Color(0xFF4f4f4f);
 static const Color darkGrey = Color(0xFF939393);
 static const Color grey = Color(0xFFe0e0e0);
 static const Color softGrey = Color(0xFff4f4f4);
 static const Color lightGrey = Color(0xFFf9f9f9);
 static const Color white = Color(0xFFffffff);

 //Gradient Colors
 static const Gradient linearGradient = LinearGradient(
   begin: Alignment(0.0,0.0),
   end: Alignment(0.707,-0.707),
   colors: [
     Color(0xFFff949e),
     Color(0xFFfad0c4),
     Color(0xFFfad0c4),
   ],
 );
}
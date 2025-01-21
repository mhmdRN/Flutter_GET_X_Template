import 'package:flutter/material.dart';

class TOutlinedButtonTheme{

  TOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.black,
          side:const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          textStyle: const TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );

  static OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          side:const BorderSide(color: Colors.blueAccent),
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          textStyle: const TextStyle(fontSize: 16.0,color: Colors.white,fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
      )
  );
}
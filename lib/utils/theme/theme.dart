import 'package:ecommerce_store/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/chip_Theme.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_store/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';

class AppTheme {
  AppTheme._();

  //Light Theme
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      chipTheme: TChipTheme.lightChipTheme,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme);

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      chipTheme: TChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme);
}

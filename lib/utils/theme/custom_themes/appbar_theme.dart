import 'package:flutter/material.dart';

class TAppBarTheme{

  TAppBarTheme._();

  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme:  IconThemeData(color: Colors.black,size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.black,size: 24.0),
    titleTextStyle:  TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.w600),
  );
  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    surfaceTintColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    iconTheme:  IconThemeData(color: Colors.black,size: 24.0),
    actionsIconTheme: IconThemeData(color: Colors.white,size: 24.0),
    titleTextStyle:  TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w600),
  );
}
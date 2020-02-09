import 'package:flutter/material.dart';

ThemeData themePattern() {
  return ThemeData(
    primaryColor: Color.fromRGBO(85, 84, 89, 1),
    accentColor: Color.fromRGBO(52, 211, 122, 1),
    focusColor: Color.fromRGBO(88, 134, 244, 1),
    indicatorColor: Colors.grey[400],
    textTheme: TextTheme(
        title: TextStyle(
          fontSize: 30.0,
          color:Color.fromRGBO(85, 84, 89, 1),
          fontWeight: FontWeight.w700,
        ),
        subtitle: TextStyle(
            fontSize: 26.0, color: Color.fromRGBO(85, 84, 89, 1), fontWeight: FontWeight.w500),
        subhead: TextStyle(
            fontSize: 26.0, color: Colors.white, fontWeight: FontWeight.w700),
        body1: TextStyle(
            color: Color.fromRGBO(132, 132, 132, 1),
            fontSize: 16.0,
            fontWeight: FontWeight.w400),
        body2: TextStyle(
            color: Color.fromRGBO(177, 188, 207, 1),
            fontSize: 14.0,
            fontWeight: FontWeight.w400)),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.white,
      textTheme: TextTheme(
        title: TextStyle(
            fontSize: 30.0, color: Color.fromRGBO(85, 84, 89, 1), fontWeight: FontWeight.w700),
      ),
    ),
  );
}

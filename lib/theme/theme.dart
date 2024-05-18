import 'package:flutter/material.dart';

import '../design/colors.dart';

final darkTheme = ThemeData(
    scaffoldBackgroundColor: backgroundColor,
    dividerColor: Colors.white54,
    listTileTheme: const ListTileThemeData(iconColor: Colors.white),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 18
      ),
      labelSmall: TextStyle(
          color: Colors.white54,
          fontSize: 14
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor:  primaryColor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 24
      ),
    ),
    primarySwatch: Colors.deepPurple,
    useMaterial3: true
);
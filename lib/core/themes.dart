import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(

    textTheme: GoogleFonts.poppinsTextTheme(
          Typography.blackCupertino,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surface: Colors.blue,
          background: Colors.white,
            brightness: Brightness.light,
        ),
);
//Data for dark theme
final darkTheme = ThemeData(

    textTheme: GoogleFonts.poppinsTextTheme(
          Typography.blackCupertino,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          surface: Colors.blue,
          background: Colors.white,
            brightness: Brightness.dark,
        ),
);
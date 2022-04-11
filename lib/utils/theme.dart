import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
  accentColor: Colors.red,
    primaryColor: Colors.red,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF6F6F6),shadowColor: Color(0xff00000029),elevation: 3),
    textTheme: TextTheme(
      titleMedium:  GoogleFonts.poppins(fontSize: 24,color: Color(0xff686868))
    ),
  );
  static final dark = ThemeData.dark().copyWith(

    appBarTheme:const AppBarTheme(backgroundColor: Color(0xff2E2E2E),shadowColor: Color(0xff00000029),elevation: 20),
    textTheme: TextTheme(
        titleMedium:  GoogleFonts.poppins(fontSize: 24,color: Color(0xffF1F1F1))
    ),
  );
}

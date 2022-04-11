import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(


    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF6F6F6),shadowColor: Color(0xff00000029),elevation: 20),

  );
  static final dark = ThemeData.dark().copyWith(

    appBarTheme:const AppBarTheme(backgroundColor: Color(0xff2E2E2E),shadowColor: Color(0xff00000029),elevation: 20),

  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ThemessClass {
  //define light texttheme and dark thext themes

  static TextTheme lightTextTheme =TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize:14,
      fontWeight: FontWeight.w700,
      color: Colors.black,

    ),
    headline1: GoogleFonts.openSans(
      fontSize:20,
      fontWeight:FontWeight.w700,
      color: Colors.black,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
       headline3: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )
    ,
       headline4: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
       headline5: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black
    )

  );
   static TextTheme darkTextTheme =TextTheme(
    bodyText1: GoogleFonts.openSans(
      fontSize:14,
      fontWeight: FontWeight.w700,
      color: Colors.white,

    ),
    headline1: GoogleFonts.openSans(
      fontSize:20,
      fontWeight:FontWeight.w700,
      color: Colors.white,
    ),
    headline2: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
       headline3: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white
    )
    ,
       headline4: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
       headline5: GoogleFonts.openSans(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white
    )
    

  );



}
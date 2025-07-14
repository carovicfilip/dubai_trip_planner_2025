import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: const Color(0xFFF8F8F8),
    textTheme: GoogleFonts.poppinsTextTheme(),
  );
}

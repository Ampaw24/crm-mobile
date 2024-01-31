import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle styleText(FontWeight fw, double size, Color color) {
  return GoogleFonts.poppins(
    fontSize: size,
    fontWeight: fw,
    color: color,
  );
}

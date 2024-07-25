import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
myStyal(double fs,[Color ? clr,FontWeight ? fw]){
  return GoogleFonts.roboto(
    fontSize: fs,
    color: clr,
    fontWeight: fw,
  );
}
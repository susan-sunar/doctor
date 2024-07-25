

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String patient =" Cancer is a large group of diseases that can start in almost any organ or tissue of the body when abnormal cells grow uncontrollably, go beyond their usual boundaries. ";

mystyle(
double fs, [
  Color? clr,
FontWeight? fw,
]) {
  return GoogleFonts.roboto(
    fontSize: fs,
    fontWeight: fw,
    color: clr,
  );
}
 Color primaryColor = Colors.blue;
Color secondaryColor = Colors.green;
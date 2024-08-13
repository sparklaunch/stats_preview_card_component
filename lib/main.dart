import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stats_preview_card_component/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      theme: _buildTheme(Brightness.dark),
      home: const Scaffold(
        backgroundColor: Color.fromRGBO(13, 14, 26, 1),
        body: MainScreen(),
      ),
    ),
  );
}

ThemeData _buildTheme(Brightness brightness) {
  final ThemeData baseTheme = ThemeData(brightness: brightness);
  return baseTheme.copyWith(
      textTheme: GoogleFonts.interTextTheme(baseTheme.textTheme));
}

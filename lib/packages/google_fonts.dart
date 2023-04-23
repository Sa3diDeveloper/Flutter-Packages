import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsExample extends StatefulWidget {
  const GoogleFontsExample({super.key});

  @override
  State<GoogleFontsExample> createState() => _GoogleFontsExampleState();
}

class _GoogleFontsExampleState extends State<GoogleFontsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Google Fonts",
        //visit this [ https://fonts.google.com/] website and browse your favorite fonts
        // and copy the top right the font name and replace with //!poppins 
        style: GoogleFonts.poppins(
          fontSize: 25,
          fontWeight: FontWeight.w800
        ),
        ),
      ),
    );
  }
}
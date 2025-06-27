import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


  class FaseFacil extends StatelessWidget {
  const FaseFacil({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fase Fácil',
          style: GoogleFonts.imFellEnglishSc(),
        ),
        backgroundColor: Colors.green.shade300,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Aqui começa a jornada fácil da Química!',
          style: GoogleFonts.imFellEnglishSc(
            textStyle: const TextStyle(fontSize: 22),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
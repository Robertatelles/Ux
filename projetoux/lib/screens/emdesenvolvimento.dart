import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmDesenvolvimento extends StatelessWidget {
  const EmDesenvolvimento({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        title: Text(
          'Em Desenvolvimento',
          style: GoogleFonts.jua(),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Estamos construindo essa funcionalidade 👷‍♀️🚧',
          style: GoogleFonts.jua(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
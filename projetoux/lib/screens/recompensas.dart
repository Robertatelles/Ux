import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_ux/screens/emdesenvolvimento.dart';

class TelaRecompensas extends StatelessWidget {
  const TelaRecompensas({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 237, 235),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 230, 193),
        leading: IconButton(
          icon: Image.asset('assets/icone_voltar.png', height: 24),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Recompensas',
                style: GoogleFonts.jua(
                  textStyle: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 6, 6, 6),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Image.asset(
                'assets/roleta.jpg',
                height: 300,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmDesenvolvimento(),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 221, 29),
                    foregroundColor: const Color.fromARGB(255, 102, 27, 27),
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Girar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

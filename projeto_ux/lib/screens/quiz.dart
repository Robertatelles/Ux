import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_ux/screens/menu.dart';

class TelaQuiz extends StatelessWidget {
  const TelaQuiz({super.key});

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
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Conteúdo centralizado
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título (adiciona o título se quiser aqui)
                    Text(
                      'Quiz',
                      style: GoogleFonts.jua(
                        textStyle: const TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 6, 6, 6),
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),

                    const SizedBox(height: 24),

                    // Imagem do quiz
                    Image.asset(
                      'assets/quiz.png',
                      height: 500,
                      fit: BoxFit.contain,
                    ),

                    const SizedBox(height: 24),

                    // Botão girar
                    ElevatedButton(
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
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      ),
                      onPressed: () {
                        // ação do botão
                      },
                      child: const Text('Girar'),
                    ),

                    const SizedBox(height: 60), // espaço para a Maria
                  ],
                ),
              ),
            ),

            // Maria posicionada corretamente no rodapé
            Positioned(
              bottom: 0,
              right: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset(
                'assets/mariasemfundo.png',
                height: 230,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
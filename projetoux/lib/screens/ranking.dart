import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TelaRanking extends StatelessWidget {
  const TelaRanking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 237, 235), // fundo claro
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
            // Coluna principal
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 40),

                // Título
                Text(
                  'Ranking',
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

                // Imagem centralizada com Expanded e Center
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'assets/ranking.png',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.85,
                    ),
                  ),
                ),

                const SizedBox(height: 20), // espaço pra cabeça da Maria
              ],
            ),

            // Maria fixa no rodapé
            Positioned(
  bottom: 0,
  right: MediaQuery.of(context).size.width * 0.17, // simula o x = 0.1 do Alignment
  child: Image.asset(
    'assets/mariasemfundo.png',
    height: 170,
  ),
),

            
          ],
        ),
      ),
    );
  }
}
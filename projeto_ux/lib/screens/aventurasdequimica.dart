import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_ux/screens/facil.dart';


class AventurasDeQuimica extends StatelessWidget {
  const AventurasDeQuimica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 237, 235),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Image.asset('assets/icone_voltar.png', height: 32),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  // Título da tela
                  Text(
                    'Aventura de Química',
                    style: GoogleFonts.imFellEnglishSc(
                      textStyle: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),

                  // Botões de dificuldade
                  _botaoDificuldade(
                    cor: Colors.green.shade300,
                    texto: 'Fácil',
                    onTap: () {
                      // ação para nível fácil
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FaseFacil()),
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  _botaoDificuldade(
                    cor: Colors.orange.shade300,
                    texto: 'Médio',
                    onTap: () {
                      // ação para nível médio
                    },
                  ),
                  const SizedBox(height: 12),
                  _botaoDificuldade(
                    cor: Colors.red.shade300,
                    texto: 'Avançado',
                    onTap: () {
                      // ação para nível avançado
                    },
                  ),
                  const SizedBox(height: 24),

                  // Ilustração central (maior e centralizada)
                  Center(
                    child: Image.asset(
                      'assets/cientista.png',
                      height: 400, // aumentei para deixar mais impactante
                      width: 400, // opcional: garante proporção
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _botaoDificuldade({
    required Color cor,
    required String texto,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: cor,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,
        child: Text(
          texto,
          style: GoogleFonts.imFellEnglishSc(
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

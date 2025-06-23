import 'package:flutter/material.dart';
import 'package:projeto_ux/screens/desafioinicial.dart';
import 'package:projeto_ux/screens/historiaantiga.dart';
import 'package:projeto_ux/screens/missaodamatematica.dart';
import 'aventurasdequimica.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaTarefas extends StatelessWidget {
  const TelaTarefas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 237, 235),
      appBar: AppBar(
        title: const Text('Tarefas'),
        backgroundColor: const Color.fromARGB(255, 193, 230, 193),
        leading: IconButton(
          icon: Image.asset(
            'assets/icone_voltar.png',
            height: 24,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              'Tarefas',
              style: GoogleFonts.jua(
                textStyle: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          _cardTarefa(
            context,
            imagem: 'assets/pergaminhosemfundo.png',
            titulo: 'Desafio Inicial',
            destino: const DesafioInicial(),
          ),
          const SizedBox(height: 16),
          _cardTarefa(
            context,
            imagem: 'assets/porçãosemfundo.png',
            titulo: 'Aventura de Química',
            destino: const AventurasDeQuimica(),
          ),
          _cardTarefa(
            context,
            imagem: 'assets/livro.img.png',
            titulo: 'Missão da Matemática',
            destino: const MissaoMatematica(),
          ),
          _cardTarefa(
            context,
            imagem: 'assets/capacete.png',
            titulo: 'História Antiga',
            destino: const HistoriaAntiga(),
          ),
        ],
      ),
    );
  }

  Widget _cardTarefa(
    BuildContext context, {
    required String imagem,
    required String titulo,
    required Widget destino,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imagem, height: 80),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => destino),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                titulo,
                style: GoogleFonts.imFellEnglishSc(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
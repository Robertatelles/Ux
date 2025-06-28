import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaPersonagens extends StatefulWidget {
  const TelaPersonagens({super.key});

  @override
  State<TelaPersonagens> createState() => _TelaPersonagensState();
}

class _TelaPersonagensState extends State<TelaPersonagens> {
  String? personagemSelecionado;

  final List<String> personagens = [
    'assets/ana.png',
    'assets/joao.png',
    'assets/maria.png',
    'assets/pedro.png',
  ];

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
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              'Personagens',
              style: GoogleFonts.jua(
                textStyle: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: Text(
              'Escolha o seu?',
              style: GoogleFonts.jua(
                fontSize: 25,
                color: Color.fromARGB(255, 7, 7, 7),
              ),
            ),
          ),
          const SizedBox(height: 32),

          Column(
            children: List.generate(personagens.length, (index) {
              final caminho = personagens[index];
              final bool selecionado = personagemSelecionado == caminho;

              // Define o deslocamento horizontal (em pixels)
              final double offsetX = (index % 2 == 0) ? -110 : 40;

              return Transform.translate(
                offset: Offset(offsetX, -index * 70), // sobe progressivamente
                child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        personagemSelecionado = caminho;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.symmetric(vertical: 1),
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: selecionado
                              ? Colors.blueAccent
                              : Colors.grey.shade300,
                          width: selecionado ? 4 : 1.5,
                        ),
                        boxShadow: [
                          if (selecionado)
                            BoxShadow(
                              color: Colors.blue.withAlpha(
                                (255 * 0.3).toInt(),
                              ), // atualizado
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: const Offset(0, 4),
                            ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          caminho,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (personagemSelecionado != null) {
                  final nome = personagemSelecionado!
                      .split('/')
                      .last
                      .replaceAll('.png', '')
                      .toUpperCase();

                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Você escolheu: $nome'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Selecione um personagem antes de continuar.',
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Selecionar',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

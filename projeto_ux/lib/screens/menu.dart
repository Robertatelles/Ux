import 'package:flutter/material.dart';
import 'tarefas.dart';
import 'recompensas.dart';
//import 'tela_ranking.dart';
//import 'tela_personagens.dart';
//import 'tela_quiz.dart';
import 'package:projeto_ux/screens/emdesenvolvimento.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Center(
                    child: Text(
                      'Olá, Sarah',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Jura',
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildBotaoMenu(
                            context,
                            cor: Colors.red,
                            icone: Icons.checklist,
                            texto: 'Ver Tarefas',
                            rota: const TelaTarefas(),
                          ),
                          const SizedBox(height: 12),
                          _buildBotaoMenu(
                            context,
                            cor: Colors.orange,
                            icone: Icons.card_giftcard,
                            texto: 'Recompensas',
                            rota: const TelaRecompensas(),
                          ),
                          const SizedBox(height: 12),
                          _buildBotaoMenu(
                            context,
                            cor: Colors.purple,
                            icone: Icons.emoji_events,
                            texto: 'Ranking',
                            rota: const EmDesenvolvimento(),
                          ),
                          const SizedBox(height: 12),
                          _buildBotaoMenu(
                            context,
                            cor: Colors.blue,
                            icone: Icons.person,
                            texto: 'Personagens',
                            rota: const EmDesenvolvimento(),
                          ),
                          const SizedBox(height: 12),
                          _buildBotaoMenu(
                            context,
                            cor: Colors.green,
                            icone: Icons.quiz,
                            texto: 'Abrir Quiz',
                            rota: const EmDesenvolvimento(),
                          ),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/joinha.png',
                  height: 320,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBotaoMenu(
    BuildContext context, {
    required Color cor,
    required IconData icone,
    required String texto,
    Widget? rota,
  }) {
    return SizedBox(
      height: 70,
      child: ElevatedButton(
        onPressed: () {
          if (rota != null) {
            Navigator.push(context, MaterialPageRoute(builder: (_) => rota));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Essa tela estará disponível em breve!'),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: cor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 30, color: Colors.white),
            const SizedBox(width: 12),
            Text(
              texto,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
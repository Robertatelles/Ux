import 'package:flutter/material.dart';
import 'tarefas.dart';
import 'recompensas.dart';

class TelaMenu extends StatelessWidget {
  const TelaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Olá, Sarah',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.2,
                  children: [
                    _buildBotaoMenu(
                      context,
                      cor: Colors.red,
                      icone: Icons.checklist,
                      texto: 'Ver Tarefas',
                      rota: const TelaTarefas(),
                    ),
                    _buildBotaoMenu(
                      context,
                      cor: Colors.orange,
                      icone: Icons.card_giftcard,
                      texto: 'Recompensas',
                      rota: const TelaRecompensas(),
                    ),
                    _buildBotaoMenu(
                      context,
                      cor: Colors.purple,
                      icone: Icons.emoji_events,
                      texto: 'Ranking',
                      rota: null,
                    ),
                    _buildBotaoMenu(
                      context,
                      cor: Colors.blue,
                      icone: Icons.person,
                      texto: 'Personagens',
                      rota: null,
                    ),
                    _buildBotaoMenu(
                      context,
                      cor: Colors.green,
                      icone: Icons.quiz,
                      texto: 'Abrir Quiz',
                      rota: null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  'assets/joinha.png',
                  height: 100,
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
      height: 120,
      child: ElevatedButton(
        onPressed: () {
          if (rota != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => rota),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Essa tela estará disponível em breve!')),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icone, size: 36, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              texto,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
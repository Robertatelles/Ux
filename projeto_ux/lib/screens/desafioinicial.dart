import 'package:flutter/material.dart';

class DesafioInicial extends StatelessWidget {
  const DesafioInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio Inicial'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.flag, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 20),
            const Text(
              'Este desafio está em desenvolvimento!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
              ),
              child: const Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
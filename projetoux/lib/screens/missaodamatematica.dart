import 'package:flutter/material.dart';

class MissaoMatematica extends StatelessWidget {
  const MissaoMatematica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Missão da Matemática'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.calculate, size: 80, color: Colors.teal),
            const SizedBox(height: 20),
            const Text(
              'Esta missão está em desenvolvimento!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              child: const Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class HistoriaAntiga extends StatelessWidget {
  const HistoriaAntiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('História Antiga'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.menu_book, size: 80, color: Colors.brown),
            const SizedBox(height: 20),
            const Text(
              'Esta jornada histórica ainda está em construção!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
              ),
              child: const Text('Voltar'),
            )
          ],
        ),
      ),
    );
  }
}
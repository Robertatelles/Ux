import 'package:flutter/material.dart';

class TelaRecompensas extends StatelessWidget {
  const TelaRecompensas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recompensas'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text(
          'Aqui suas recompensas vão brilhar!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
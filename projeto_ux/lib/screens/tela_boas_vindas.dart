import 'package:flutter/material.dart';
import 'menu.dart'; // ou 'package:projeto_flutter_ux/screens/menu.dart' se estiver em outra pasta



class TelaBoasVindas extends StatelessWidget {
  const TelaBoasVindas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(child:Padding(
          padding:const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        // Topo: logo e texto
      Column(
        children: [
          Image.asset('assets/logo.png', height: 100),
          const SizedBox(height: 20),
          const Text(
            'Bem-vindo ao LearnHero',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),

      // Imagem central
      Image.asset('assets/heroi.png', height: 220),
            // Botões
      Column(children: [ SizedBox( width: double.infinity, child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => const TelaMenu()),
  );
},
            child: const Text('Entrar', style: TextStyle(fontSize: 18)),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {},
              child: const Text('Cadastrar-se', style: TextStyle(fontSize: 18)),
            ),
          ),
        ],
      ),
    ],
    ),
    ),
    ),
    ),
  );
}
}

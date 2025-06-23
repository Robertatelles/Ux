import 'package:flutter/material.dart';


class Telaresultado extends StatelessWidget {
  const Telaresultado({super.key});

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recompensas'),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Topo: logo e texto
                Column(
                  children: [
                    const Text(
                      'Parabéns!!',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Você Completou o Desafio!',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),
                      ),
                    Image.asset('assets/pontuação.png', height: 100),
                    const SizedBox(height: 20),
                  ],
                ),
                const SizedBox(height: 40),
                // Aqui você pode adicionar outras recompensas ou prêmios
                
              ],
            ),
          ),
        ),
      ), bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // ou leve para outra tela
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Concluir',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
      
  }
}

  

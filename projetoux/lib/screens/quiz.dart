import 'package:flutter/material.dart';



class TelaQuiz extends StatelessWidget {
  const TelaQuiz({super.key});

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
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Conteúdo centralizado
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título (adiciona o título se quiser aqui)
                    

                    const SizedBox(height: 24),

                    // Imagem do quiz
                    Image.asset(
                      'assets/quiz.png',
                      height: 400,
                      fit: BoxFit.contain,
                    ),

                    const SizedBox(height: 24),

                    // Botão girar
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 62, 159, 81),
                        foregroundColor: const Color.fromARGB(255, 253, 253, 253),
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                      ),
                      onPressed: () {
                        // ação do botão
                      },
                      child: const Text('Responder'),
                    ),

                    const SizedBox(height: 30), // espaço para a Maria
                  ],
                ),
              ),
            ),

         ],
        ),
      ),
    );
  }
}
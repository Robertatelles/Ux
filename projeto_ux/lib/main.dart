import 'package:flutter/material.dart';
import 'screens/tela_boas_vindas.dart';
import 'screens/menu.dart';
//import 'screens/tarefas.dart';
//import 'screens/recompensas.dart';

void main() {
  runApp(const LearnHeroApp());
}

class LearnHeroApp extends StatelessWidget {
  const LearnHeroApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnHero',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaBoasVindas(),
        '/menu': (context) => const TelaMenu(),
        //'/tarefas': (context) => const TelaTarefas(),
        //'/recompensas': (context) => const TelaRecompensas(),
        // outras rotas que você for criando
      },
    );
  }
}
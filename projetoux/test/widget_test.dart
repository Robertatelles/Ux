import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_ux/screens/telaboasvindas.dart';



void main() {
  testWidgets('Verifica texto da tela de boas-vindas', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: TelaBoasVindas(),
      ),
    );

    expect(find.text('Bem-vindo ao LearnHero'), findsOneWidget);
    expect(find.text('Entrar'), findsOneWidget);
  });
}

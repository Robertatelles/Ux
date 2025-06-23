import 'package:flutter/material.dart';
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text(
          'Aqui vão aparecer suas tarefas!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
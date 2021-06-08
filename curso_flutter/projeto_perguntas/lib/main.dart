import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void responder() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas.elementAt(0)),
          ElevatedButton(onPressed: responder, child: Text('Resposta 1')),
          ElevatedButton(onPressed: null, child: Text('Resposta 2')),
          ElevatedButton(onPressed: null, child: Text('Resposta 3')),
        ],
      ),
    ));
  }
}

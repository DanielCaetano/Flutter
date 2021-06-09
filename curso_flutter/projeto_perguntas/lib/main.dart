import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaAppSelecionada = 0;

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito'
  ];

  String pergunta() {
    String elementAt = perguntas.elementAt(perguntaAppSelecionada);
    print(elementAt);
    return elementAt;
  }

  void _responder() {
    setState(() {
      perguntaAppSelecionada++;
    });

    print("pergunt:");
    print(perguntaAppSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas.elementAt(perguntaAppSelecionada)),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
          ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
          Text(pergunta()),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

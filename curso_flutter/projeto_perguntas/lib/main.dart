import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questaoDart.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaAppSelecionada = 0;

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito'
  ];

  String pergunta() {
    String elementAt = perguntas.elementAt(_perguntaAppSelecionada);
    print(elementAt);
    return elementAt;
  }

  void _responder() {
    if (_perguntaAppSelecionada < perguntas.length - 1) {
      setState(() {
        _perguntaAppSelecionada++;
      });
    }

    print("pergunt:");
    print(_perguntaAppSelecionada);
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
          Questao(pergunta()),
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

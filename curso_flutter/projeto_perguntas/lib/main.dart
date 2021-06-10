import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questaoDart.dart';
import 'package:projeto_perguntas/respostas.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaAppSelecionada = 0;

  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorita?',
      'respostas': ['Maria', 'Jão', 'Elefante', 'Leão'],
    },
  ];

  void _responder() {
    setState(() {
      _perguntaAppSelecionada++;
    });
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
          Questao(perguntas[_perguntaAppSelecionada]['texto']),
          Respostas('Resposta 1', _responder),
          Respostas('Resposta 2', _responder),
          Respostas('Resposta 3', _responder),
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

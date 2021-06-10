import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questaoDart.dart';
import 'package:projeto_perguntas/respostas.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto2', 'Vermelho', 'Verde', 'Branco'],
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

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          ...respostas.map((t) => Respostas(t, _responder)).toList()
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

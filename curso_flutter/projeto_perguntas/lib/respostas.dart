import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  Respostas(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onSelect,
        child: Text(texto),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            textStyle: MaterialStateProperty.all(TextStyle(fontSize: 30))),
      ),
    );
  }
}

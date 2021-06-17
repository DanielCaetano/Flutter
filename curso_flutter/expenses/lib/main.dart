import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';
import './components/transaction_user.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Despesas Pessoais'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue[200],
                child: Text(
                  'Grafico1',
                  style: TextStyle(fontSize: 20),
                ),
                elevation: 5,
              ),
            ),
            TransactionUser(),
          ],
        ));
  }
}

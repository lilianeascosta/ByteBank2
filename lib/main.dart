import 'package:bytebank2/http/webclient.dart';
import 'package:bytebank2/screens/dashboard.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';
import 'models/transactions.dart';


void main() {
  runApp(const ByteBank2());
  // save(Transaction(200.0, Contact(0, 'Hinata', 200))).then((transaction) => print('new transctions $transaction'));
  // findAll().then((transactions) => print('new transctions $transactions'));

}

class ByteBank2 extends StatelessWidget {
  const ByteBank2({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.blueAccent[700],
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}

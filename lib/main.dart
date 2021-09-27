import 'package:expense_app/test.dart';
import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
          primarySwatch: generateMaterialColor(Pallete.primary),
          scaffoldBackgroundColor: generateMaterialColor(Pallete.third)),
      home: MyHomePage(),
    );
  }
}

class Pallete {
  static const Color primary = Color(0xFF9D9D9D);
  static const Color secondary = Color(0xFFF8F0DF);
  static const Color third = Color(0xFFFEFBF3);
  static const Color fourth = Color(0xFF79B4B7);
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: 'Internet Billing',
      amount: 25,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Cat foods',
      amount: 15,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expense App"),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: generateMaterialColor(Pallete.fourth),
                child: Container(
                  margin: EdgeInsets.all(0),
                  width: double.infinity,
                  height: 200,
                  child: Text(
                    "Chart",
                    textAlign: TextAlign.center,
                  ),
                ),
                elevation: 5,
              ),
              Column(
                  children: transactions.map((tx) {
                return Card(
                    child: Row(
                  children: <Widget>[
                    Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: generateMaterialColor(Pallete.fourth),
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "\$${tx.amount}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: generateMaterialColor(Pallete.fourth)),
                        )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: generateMaterialColor(Pallete.fourth),
                          ),
                        ),
                        Text(
                          tx.date.toString(),
                          style: TextStyle(
                              color: generateMaterialColor(Pallete.primary)),
                        )
                      ],
                    )
                  ],
                ));
              }).toList())
            ])); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

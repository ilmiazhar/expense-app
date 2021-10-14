import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';
import './colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
          // primarySwatch: generateMaterialColor(Pallete.primary),
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
  static const Color fifth = Color(0xFF4C4C6D);
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

  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: generateMaterialColor(Pallete.primary),
          title: Text("Expense App"),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                color: generateMaterialColor(Pallete.fourth),
                child: Container(
                  margin: EdgeInsets.all(0),
                  width: double.infinity,
                  height: 200,
                  child: Center(
                    child: Text("This is Charts",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 42,
                            color: generateMaterialColor(
                              Pallete.secondary,
                            ))),
                  ),
                ),
                elevation: 5,
              ),
              Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  shadowColor: generateMaterialColor(Pallete.secondary),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Title",
                            labelStyle: TextStyle(),
                          ),
                          // onChanged: (val) {
                          //   titleInput = val.trim();
                          // },
                          controller: titleController,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Amount",
                          ),
                          // onChanged: (val) => amountInput = val,
                          controller: amountController,
                        ),
                        TextButton(
                            onPressed: () {
                              // print(titleInput);
                              // print(amountInput);
                              print(titleController.text);
                            },
                            child: Text("Add Transaction"),
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor:
                                    generateMaterialColor(Pallete.fourth),
                                onSurface:
                                    generateMaterialColor(Pallete.primary)))
                      ],
                    ),
                  )),
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
                          DateFormat("d MMM y").format(tx.date),
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

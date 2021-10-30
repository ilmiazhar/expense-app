import 'package:flutter/material.dart';
import 'helper/colors.dart';
import 'widgets/user_transactions.dart';

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

class MyHomePage extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              color: generateMaterialColor(Pallete.fourth),
              child: Container(
                margin: EdgeInsets.all(0),
                width: double.infinity,
                height: 200,
                child: Center(
                  child: Text(
                    "This is Charts",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 42,
                        color: generateMaterialColor(
                          Pallete.secondary,
                        )),
                  ),
                ),
              ),
              elevation: 5,
            ),
            UserTransactions(),
          ],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

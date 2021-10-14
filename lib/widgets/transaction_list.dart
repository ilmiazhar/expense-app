import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../helper/colors.dart';

class TransactionList extends StatefulWidget {
  TransactionList({Key? key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
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
    return Column(
        children: _userTransaction.map((tx) {
      return Card(
          child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                style: TextStyle(color: generateMaterialColor(Pallete.primary)),
              )
            ],
          )
        ],
      ));
    }).toList());
  }
}

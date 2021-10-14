import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../helper/colors.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: transactions.map((tx) {
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

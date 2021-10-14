import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction(
      {@required required this.id,
      @required required this.title,
      @required required this.amount,
      @required required this.date});
}

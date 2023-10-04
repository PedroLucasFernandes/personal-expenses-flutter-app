import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:personal_expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(
      id: "t1",
      title: "Cinema",
      value: 15.90,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Água",
      value: 60.00,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
      ],
    );
  }
}
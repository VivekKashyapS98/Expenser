import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenceCard extends StatelessWidget {
  final String expenseName;
  final int amount;
  final String date;

  ExpenceCard({this.expenseName, this.amount, this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(amount.toString()),
          ),
          Column(
            children: [
              Text(expenseName),
              Text(date.toString()),
            ],
          ),
        ],
      ),
    );
  }
}

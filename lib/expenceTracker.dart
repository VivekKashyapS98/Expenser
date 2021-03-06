import 'package:expencer/newExpense.dart';

import 'expenceCard.dart';
import 'package:flutter/material.dart';

class ExpenceTracker extends StatefulWidget {
  @override
  _Expences createState() => _Expences();
}

class _Expences extends State<ExpenceTracker> {
  var _expenceList = [
    {
      "id": 0,
      "title": "Popcorn",
      "cost": 35,
      "date": "Mon 12, 2021",
    },
    {
      "id": 1,
      "title": "BullShit",
      "cost": 100,
      "date": "Mon 12, 2021",
    },
    {
      "id": 2,
      "title": "MasalaPuri",
      "cost": 25,
      "date": "Mon 12, 2021",
    },
    {
      "id": 3,
      "title": "Headphones",
      "cost": 2500,
      "date": "Mon 12, 2021",
    },
    {
      "id": 4,
      "title": "Bluetooth Speaker",
      "cost": 2100,
      "date": "Mon 12, 2021",
    },
  ];

  void _deleteExpense(id) {
    setState(() {
      _expenceList.removeWhere((element) => element["id"] == id);
    });
  }

  void _showAddNewExpense(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewExpence();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expencer"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              ..._expenceList.map(
                (obj) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.decelerate,
                    child: ExpenceCard(
                      id: obj["id"],
                      expenseName: obj["title"],
                      amount: obj["cost"],
                      date: obj["date"],
                      deleteFunction: _deleteExpense,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _showAddNewExpense(context),
      ),
    );
  }
}

import 'package:expencer/expenceCard.dart';
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

  void deleteExpense(id) {
    setState(() {
      _expenceList.removeWhere((element) => element["id"] == id);
    });
  }

  var _input = {
    "title": "",
    "cost": 0,
    "date": "",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ..._expenceList.map(
              (obj) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: ExpenceCard(
                    id: obj["id"],
                    expenseName: obj["title"],
                    amount: obj["cost"],
                    date: obj["date"],
                    deleteFunction: deleteExpense,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:expencer/expenceCard.dart';
import 'package:flutter/material.dart';

class ExpenceTracker extends StatefulWidget {
  @override
  _Expences createState() => _Expences();
}

class _Expences extends State<ExpenceTracker> {
  var _expenceList = [
    {
      "title": "Popcorn",
      "cost": 35,
      "date": "Mon 12, 2021",
    },
    {
      "title": "BullShit",
      "cost": 100,
      "date": "Mon 12, 2021",
    },
    {
      "title": "MasalaPuri",
      "cost": 25,
      "date": "Mon 12, 2021",
    },
    {
      "title": "Headphones",
      "cost": 2500,
      "date": "Mon 12, 2021",
    },
    {
      "title": "Bluetooth Speaker",
      "cost": 2100,
      "date": "Mon 12, 2021",
    },
  ];
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
            Text("Expences"),
            ..._expenceList.map((obj) {
              return ExpenceCard(
                expenseName: obj["title"],
                amount: obj["cost"],
                date: obj["date"],
              );
            }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpenceCard extends StatelessWidget {
  final int id;
  final String expenseName;
  final int amount;
  final String date;
  final Function deleteFunction;

  ExpenceCard({
    this.id,
    this.expenseName,
    this.amount,
    this.date,
    this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(
                "\$" + amount.toString(),
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  expenseName,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  date.toString(),
                  style: TextStyle(
                    color: Colors.grey,
                    // fontSize: 17,
                  ),
                ),
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete_rounded),
              onPressed: () => deleteFunction(this.id),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:expencer/expenceTracker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expencer',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expencer"),
        ),
        body: ExpenceTracker(),
      ),
    );
  }
}

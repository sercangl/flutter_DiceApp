import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Application',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Dice Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Row(
        children: [
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(5);
                leftDiceNumber = leftDiceNumber + 1;
                rightDiceNumber = Random().nextInt(5);
                rightDiceNumber = rightDiceNumber + 1;
              });
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(5);
                leftDiceNumber = leftDiceNumber + 1;
                rightDiceNumber = Random().nextInt(5);
                rightDiceNumber = rightDiceNumber + 1;
              });
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      )),
    );
  }
}

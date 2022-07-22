import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Dice',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Scaffold(
      backgroundColor: Colors.teal.shade700,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.teal.shade900,
      ),
      body: Dice(),
    ),
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void draw() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: draw,
              child: Image.asset('images/dado$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: draw,
              child: Image.asset('images/dado$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

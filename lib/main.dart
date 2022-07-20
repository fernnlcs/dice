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

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 5;
    var rightDiceNumber = 3;
    
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                print('left button pressed');
              },
              child: Image.asset('images/dado$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('right button pressed');
              },
              child: Image.asset('images/dado$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

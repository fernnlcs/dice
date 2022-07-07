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
    return Container();
  }
}

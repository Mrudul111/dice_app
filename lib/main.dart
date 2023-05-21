import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber =  1;
  int rightDiceNumber = 2;
  void pressed(){
    setState((){
      leftDiceNumber = 1 + Random().nextInt(6);
      rightDiceNumber = 1 + Random().nextInt(6);
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [

          Expanded(child: TextButton(child: Image.asset('images/dice$leftDiceNumber.png'),onPressed: () {pressed();})),

          Expanded(child: TextButton(child: Image.asset('images/dice$rightDiceNumber.png'),onPressed: () {pressed();})),

        ],
      ),
    );
  }
}

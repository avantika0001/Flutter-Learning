import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent.shade200,
        appBar: AppBar(
          title: Center(child: Text('🎲 || Dice || 🎲')),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
//any var here won't update on HOT RELOAD
  // var leftDiceNumber=1;
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber=1;
  var rightDiceNumber=1;
  void roll_dice(){
    rightDiceNumber=Random().nextInt(6)+1;
    leftDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context) {
    //HOT RELOAD updates the Build method
    //this block of code reloads on HOT RELOAD

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  roll_dice();
                });
                print('left button Pressed');
              },child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  roll_dice();
                });
              },child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
          ),
        ],
      ),
    );
  }
  }




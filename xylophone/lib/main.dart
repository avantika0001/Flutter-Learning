import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void PlaySound(int soundNumber){
    final player=AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color colour,required int soundNumber}){
    return Expanded(
      child: TextButton(child:Text(''),

        style: TextButton.styleFrom(
          backgroundColor: colour, // Text Color
        ),
        onPressed: (){
        PlaySound(soundNumber);
      },
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colour: Colors.red, soundNumber: 1),
              buildKey(colour: Colors.orange, soundNumber: 2),
              buildKey(colour: Colors.yellow, soundNumber: 3),
              buildKey(colour: Colors.green, soundNumber: 4),
              buildKey(colour: Colors.teal, soundNumber: 5),
              buildKey(colour: Colors.blue, soundNumber: 6),
              buildKey(colour: Colors.purple, soundNumber: 7),
            ],
          ),),

        ),
      ),
    );
  }
}

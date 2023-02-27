import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);


class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything!"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber=1;
  @override
  Widget build(BuildContext context) {
    return Center(
     child: TextButton(onPressed: (){
       setState(() {
         ballNumber=Random().nextInt(5)+1;

       });
       print('i got clicked');
     }
         ,child: Image.asset('images/ball$ballNumber.png'))
    );
  }
}

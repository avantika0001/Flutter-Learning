// first app
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() =>runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.pink[100],
    appBar:AppBar(
      title:Text('CATS are CUTE😤 '),
      centerTitle: true,
      backgroundColor: Colors.pink[900],
    ),
    body:Center(
      child: Image(
        //image: NetworkImage("https://tenor.com/view/tiny-green-frog-frog-love-frog-heart-holding-heart-teeny-tiny-green-frog-gif-23224136"),
        //image:AssetImage('images/frog.gif'),
        image:AssetImage('images/cat_meme.jpeg'),
      ),
    ),

  ),
));
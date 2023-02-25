import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:
        SafeArea(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('images/profile_pic_me.jpg'),
          ),
          Text('Avantika Pandey',
          style:TextStyle(
            fontFamily: 'Pacifico',
            fontSize: 32.0,
              color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
          Text('FLUTTER DEVELOPER',
            style:TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 16.0,
              color: Colors.teal.shade100,
              letterSpacing: 5.5,
              //fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0,
          width: 170.0,
          child:Divider(
            color:Colors.teal.shade100,
          ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.phone,
                    color:Colors.teal),
                title: Text('+91 123 456 7890',
                  style:TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize:20.0,
                  ),
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.email,
                    color:Colors.teal),
                title: Text('avantikapandey0001@gmail.com',
                  style:TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize:16.0,
                  ),
                ),
              )
            ),
          ),
        ],
          ),
        ),

      ),
    );
  }
}


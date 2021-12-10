import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1:TextStyle(
            fontSize: 12.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            ),
            display1: TextStyle(fontSize: 12.0,color: Colors.black,fontWeight: FontWeight.bold,)
            ),
            ),
    );
  }
}


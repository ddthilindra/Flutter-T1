import 'package:flutter/material.dart';
import 'package:t11/screen/homePage.dart';
import 'package:t11/screen/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Navigation'),
      
      routes: <String,WidgetBuilder>{
        '/second':(context)=>secondS(),
      },
      
    );
  }
}


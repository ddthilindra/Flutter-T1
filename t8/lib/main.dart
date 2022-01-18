import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(// can use only one child
        //margin: EdgeInsets.all(20.0),
        //padding: EdgeInsets.all(20.0),//hema peththenma
        //padding: EdgeInsets.symmetric(vertical: 20.0),//depeththen udun/yatin
        //padding: EdgeInsets.only(top: 200.0),//awashya pattakin
        //transform: Matrix4.rotationZ(0.1),//angle eka wenas karanna
        height: 200.0,//double.infinity,
        width: 200.0,
        alignment: Alignment.bottomRight,
        color: Colors.amber,
        child: Text(
          "asdas",
          style: TextStyle(fontSize: 50.0),
        ),
      ),
    );
  }
}

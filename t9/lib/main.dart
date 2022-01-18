import 'package:flutter/material.dart';

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
      body: Container(        
        color: Colors.amber,
        height: 300.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,//vertical center
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "text 1",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "text 1",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "text 1",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,//vertical center
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Text(
        //       "text 1",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     Text(
        //       "text 1",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     Text(
        //       "text 1",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:t11/screen/secondScreen.dart';

class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MyHomePage({required this.title});

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
      body: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'AAAAAAAAAAA',style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.of(context).push(MaterialPageRoute(  //navigation
          //   builder: (_){
          //     return secondS(); //pase data to secondScreen constructor
          //   }
          //   ));
          Navigator.of(context).pushNamed('/second'); //navigation woth route
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

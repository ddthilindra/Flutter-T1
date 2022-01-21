import 'package:flutter/material.dart';
import 'package:t11/screen/homePage.dart';

class secondS extends StatelessWidget {
  const secondS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second screen"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.pop(context, MyHomePage(title: '',));
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'SSSSSSSSSSSSS',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

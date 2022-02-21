import 'package:flutter/material.dart';

class Clr extends StatefulWidget {
  const Clr({Key? key}) : super(key: key);

  @override
  _ClrState createState() => _ClrState();
}

class _ClrState extends State<Clr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.deepPurple[600],
                  ),
                  Container(
                    height: 100,
                    width: 300,
                    color: Colors.deepPurple[400],
                  ),
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.deepPurple[200],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 100,
                    color: Colors.deepPurple[600],
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    color: Colors.deepPurple[400],
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.deepPurple[200],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

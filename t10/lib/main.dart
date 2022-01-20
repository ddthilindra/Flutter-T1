import 'package:flutter/material.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tute 10",
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({ Key? key }) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  int count=0;
  void increment(){
    setState(() { //realtime state change (update screen in real time) redraw the build mehod
      count += 1;
    print("c "'$count');
    });    
  }

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asdas"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hey",style: TextStyle(fontSize: 25),),
            Text('$count',style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:increment, //wihout () pointer 
        child: Icon(Icons.add),
      ),
    );
  }
}

// class homePage extends StatelessWidget {
  
//   int count=0;
//   void increment(){
//     count += 1;
//     print("c "'$count');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("asdas"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Hey",style: TextStyle(fontSize: 25),),
//             Text('$count',style: Theme.of(context).textTheme.headline4,),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed:increment, //wihout () pointer 
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
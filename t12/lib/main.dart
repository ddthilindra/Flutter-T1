import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

  var items=List<String>.generate(100, (index) => 'item $index');
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),

      body: ListView.builder(
        itemCount:items.length,
        itemBuilder: (context, index)  {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),

      // body: Container(
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     children: [
      //       ListTile(
      //         leading: Icon(Icons.brightness_auto),
      //         title: Text("Brightness auto"),
      //         subtitle: Text("Change Brightness"),
      //         trailing: Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.image),
      //         title: Text("Brightness auto"),
      //         subtitle: Text("Change Brightness"),
      //         trailing: Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.layers),
      //         title: Text("Brightness auto"),
      //         subtitle: Text("Change Brightness"),
      //         trailing: Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.o),
      //         title: Text("Brightness auto"),
      //         subtitle: Text("Change Brightness"),
      //         trailing: Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //       ListTile(
      //         leading: Icon(Icons.brightness_auto),
      //         title: Text("Brightness auto"),
      //         subtitle: Text("Change Brightness"),
      //         trailing: Icon(Icons.menu),
      //         onTap: (){},
      //       ),
      //       Divider(),
      //     ],
      //   ),
      // )
    );
  }
}

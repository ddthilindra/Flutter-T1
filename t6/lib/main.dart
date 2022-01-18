import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deshitha"),

        leading: IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu)
          ),

          actions: [ //widget array
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search)
            ),
          
            IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
            ), 
          ],

          flexibleSpace: Image.asset("assets/back.jpeg",fit: BoxFit.cover,)//appbar icon. hamberge
      ),
      // Doc - https://api.flutter.dev/flutter/material/AppBar-class.html
    );
  }
}
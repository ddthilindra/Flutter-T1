import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
    )
  );
}
//#

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Deshitha"),
    
          leading: IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.menu)
            ),
              //appbar icon. hamberge

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
    
            // flexibleSpace: 
            // Image.asset("assets/back.jpeg",
            // fit: BoxFit.cover,
            // ),
    
            bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),text: "Tab 1",),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
            elevation: 22.0, //tabbar shadow
            backgroundColor: Colors.green, //tabbar backg color
        ),

          body: TabBarView(
            children: [
              tab1(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        // Doc - https://api.flutter.dev/flutter/material/AppBar-class.html
      ),
    );  
  }
}



Widget tab1(){
    return Container(
      child: Center(
        child: Text("Tab 1"),
      ),
    );      
}
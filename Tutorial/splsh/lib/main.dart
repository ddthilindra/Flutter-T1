import 'dart:io';

import 'package:flutter/material.dart';
import 'package:splsh/splash.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }

  
}


  class MyHttpOverrides extends HttpOverrides {
  @override
  Future<HttpClient> createHttpClient(SecurityContext context) async {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}





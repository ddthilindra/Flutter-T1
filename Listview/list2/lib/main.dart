import 'package:flutter/material.dart';
import 'package:list2/pages/index.dart';
import 'package:list2/themes/color.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primary
    ),
    home: IndexPage(),
  )
);



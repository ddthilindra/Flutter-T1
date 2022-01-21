import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:splsh/form.dart';

import 'App_Constant.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPostTitleData();
    getPostTitle();
  }

  String? selectedDEPName;
  String? selectedMUNName;
  List dataDEP = [];
  List dataMUN = [];

  // Future getPostTitleData() async {
  //   // print("check");
  //   // print("ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000");
  //   try {
  //     var response = await Dio().get(
  //         // 'http://ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000/filter/redMedicaFilteredBy/DEPARTAMENTO');
  //         // App_Constant.domain_seguro_dio +
  //         //     '/filter/redMedicaFilteredBy/DEPARTAMENTO'

  //         'http://ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000/filter/redMedicaFilteredBy/DEPARTAMENTO');

  //     // print("response:"+response!);
  //     if (response.statusCode == 200) {
  //       // Map<String, dynamic> map = json.decode(response.body);
  //       // var jsonData = json.decode(jsonBody);
  //       setState(() {
  //         print(response.data);
  //         dataDEP = response.data["userId"];
  //         //getDEPDataNew();
  //         print("dataDEP: $dataDEP" );
  //       });
  //       print(dataDEP);
  //     } else {
  //       // throw Exception('Failed to load post');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future getPostTitleData() async {
    // print("check");
    // print("ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000");
    try {
      var response = await Dio().get(
          // 'http://ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000/filter/redMedicaFilteredBy/DEPARTAMENTO');
          App_Constant.domain_seguro_dio +
              '/filter/redMedicaFilteredBy/DEPARTAMENTO');
      // print("response:"+response!);
      if (response.statusCode == 200) {
        // Map<String, dynamic> map = json.decode(response.body);
        // var jsonData = json.decode(jsonBody);
        setState(() {
          print("Hello data ${response}");
          dataDEP = response.data["data"];
          //getDEPDataNew();
          print("dataDEP: $dataDEP");
        });
        print(dataDEP);
      } else {
        // throw Exception('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }

  //without dio
  Future getPostTitle() async {
    // print("check");
    // print("ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000");
    try {
      var response = await http.get(
          Uri.http(App_Constant.domain_seguro,
              '/filter/redMedicaFilteredBy/DEPARTAMENTO'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      if (response.statusCode == 200) {
        var jsonBody = response.body;
        var jsonData = json.decode(jsonBody);
        setState(() {
          dataMUN = jsonData["data"];
        });
        print(dataMUN);
      } else {
        // throw Exception('Failed to load post');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedDEPName,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedDEPName = newValue!;
                });
              },
              items: dataDEP.map((list) {
                return DropdownMenuItem(
                    child: Text(
                      list['DEPARTAMENTO'].toUpperCase(),
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'brandon-grotesque',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    value: list['Id'].toString());
              }).toList(),
            ),
            DropdownButton<String>(
              value: selectedMUNName,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  selectedMUNName = newValue!;
                });
              },
              items: dataMUN.map((list) {
                return DropdownMenuItem(
                    child: Text(
                      list['DEPARTAMENTO'].toUpperCase(),
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                        fontSize: 10,
                        fontFamily: 'brandon-grotesque',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    value: list['Id'].toString());
              }).toList(),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginSignup()));
                },
                icon: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'App_Constant.dart';

class LoginSignup extends StatefulWidget {
  const LoginSignup({Key? key}) : super(key: key);

  @override
  _LoginSignupState createState() => _LoginSignupState();
}

class _LoginSignupState extends State<LoginSignup> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  var dataToken = [];
  Future loginApiReq(String uname, String pass) async {
    // print("check");
    // print("ec2-18-236-186-25.us-west-2.compute.amazonaws.com:8000");
    try {
      var response = await http.post(
        Uri.parse('https://10.0.2.2:8000/user/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': uname,
          'password': pass,
        }),
      );
      if (response.statusCode == 200) {
        var jsonBody = response.body;
        var jsonData = json.decode(jsonBody);
        setState(() {
          dataToken = jsonData["token"];
        });

        // var response = await Dio()
        //     .post('http://localhost:8000/user/login', data: {
        //   // "nombre_completo": user.displayName,
        //   // "email": user.email,
        //   // "password": user.uid,
        //   // "login_status": LoginType.gmailType,
        //   //"nombre_completo": user.displayName,
        //   "username": uname,
        //   "password": pass,
        //   //"phone_number": user.phoneNumber == null ? "" : user.phoneNumber,
        //   //"is_phone_auth": 1,
        //   //"login_status": "gmailType",
        // });

        // // print("response:"+response!);
        // if (response.statusCode == 200) {
        //   // Map<String, dynamic> map = json.decode(response.body);
        //   // var jsonData = json.decode(jsonBody);
        //   setState(() {
        //     print("Hello data ${response}");
        //     dataToken = response.data["token"];
        //     //getDEPDataNew();
        //     print("dataDEP: $dataToken");
        //   });
        // print(dataToken);
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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text('Sign In'),
                onPressed: () {
                  print(password.text);
                  print(username.text);
                  loginApiReq(username.text, password.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

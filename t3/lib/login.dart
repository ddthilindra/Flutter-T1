import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.8,
                child: Column(
                  children: [
                    Text("Login", style: TextStyle(color: Colors.black)),
                    Text("Username"),
                    TextField(
                      decoration:
                          InputDecoration(label: Text("Type your username")),
                    ),
                    Text("Password"),
                    TextField(
                      decoration:
                          InputDecoration(label: Text("Type your password")),
                    ),
                    Text("Forgot password?"),
                    RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      onPressed: (){},
                    child: Text("Login"),),
                    Text("Or login with")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

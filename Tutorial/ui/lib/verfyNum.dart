import 'package:flutter/material.dart';

class verifyNumber extends StatefulWidget {
  const verifyNumber({Key? key}) : super(key: key);

  @override
  _verifyNumberState createState() => _verifyNumberState();
}

class _verifyNumberState extends State<verifyNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff14DDAF),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/images/logo.png'),
                  )
                ],
              ))),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          children: [
                            Text(
                              "Enter Phone Number",
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 90,
                            width: 350,
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: 'Enter Name',
                                            hintText: 'Enter Your Name'),
                                      )
                                      // TextFormField(
                                      //     decoration: InputDecoration(
                                      //       hintText: "Enter your number",
                                      //     )),
                                    ],
                                  ),
                                ],
                              ),
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 350,
                      margin: EdgeInsets.all(25),
                      child: FlatButton(
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        color: Color(0xff14DDAF),
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

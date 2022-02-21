import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';

import 'verfyNum.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                              style: GoogleFonts.roboto(fontSize: 25),
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
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: Text(
                                      "Phone number",
                                      style: GoogleFonts.openSans(fontSize: 12),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      CountryCodePicker(
                                        initialSelection: 'LK',
                                      ),
                                      Text("| "),
                                      Container(
                                          width: 220,
                                          child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[0-9]')),
                                              ],
                                              decoration: InputDecoration(
                                                hintText: "Enter your number",
                                              )))
                                    ],
                                  ),
                                ],
                              ),
                              color: Color(0XffEEEEEE),
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
                        onPressed: () {
                           Navigator.push(
                      context, MaterialPageRoute(builder: (context) => verifyNumber()));
                        },
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

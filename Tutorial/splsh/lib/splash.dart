import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3)).then((value) {
      // Navigator.of(context).push(MaterialPageRoute(builder: (context) => IntroScreen(),));

      Navigator.of(context).push(   //pop for backward
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 1000),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            // return IntroScreen();
            return homePage();
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return Align(
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SvgPicture.asset("assets/img/Logo-Logo.svg"),
      ),
    );
  }
}
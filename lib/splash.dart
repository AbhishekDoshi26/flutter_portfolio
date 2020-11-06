import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController logoController;
  Animation logoAnimation;
  @override
  void initState() {
    super.initState();
    logoController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    logoController.forward(); //Proceeds animation forward
    logoController.addListener(() {
      setState(() {});
    });
    logoAnimation = CurvedAnimation(
      parent: logoController,
      curve: Curves.bounceInOut,
    );

    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        PageTransition(
          type: PageTransitionType.fade,
          child: Home(),
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Hero(
          tag: 'logo',
          child: Image.asset(
            'assets/images/sign.png',
            height: logoAnimation.value * 70.0,
          ),
        ),
      ),
    );
  }
}

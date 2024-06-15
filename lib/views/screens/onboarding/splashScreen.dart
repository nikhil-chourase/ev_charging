import 'dart:async';

import 'package:evcharging/views/screens/onboarding/auth/user_mode.dart';
import 'package:evcharging/views/screens/onboarding/onboarding1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String route = '/splashScreen';


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

     Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed(Onboarding1.route);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 11, 15, 24),
      body: SafeArea(
        child: Center(
          child: Hero(
              tag: 'logo',
              child: Container(
                height: 60,
                child: Image.asset('images/splash.png'),
              )),
        ),
      ),
    );
  }
}

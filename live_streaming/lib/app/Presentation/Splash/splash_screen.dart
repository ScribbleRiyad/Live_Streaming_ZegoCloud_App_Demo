import 'dart:async';
import 'package:flutter/material.dart';

import '../choice_page.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 8),
        () =>  Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  const ChoiceScreen()),
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
            height: 250.00,
            child: Image.asset('assets/images/scribble-logo-animation.gif')),
      ),
    );
  }
}

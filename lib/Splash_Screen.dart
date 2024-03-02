import 'dart:async';

import 'package:flutter/material.dart';

import 'LoginPage.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2) , () {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginPage(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
              child: Image.network(
            "https://cdn.logojoy.com/wp-content/uploads/20230719121415/slack-logo-600x319.png",
            width: 150,
          )),
          SizedBox(
            height: 20,
          ),
          Text(
            "Application",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

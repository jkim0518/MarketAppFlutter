// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketapp/constants.dart';
import 'package:marketapp/screens/main_screen.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({ Key? key }) : super(key: key);

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColour,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 5,
            child: Center(
              child: Text(
                "MarketApp",
              style: GoogleFonts.pacifico(fontSize: 28, color: Colors.white),
              ),
            ),
            ),
            Expanded(
              flex: 1,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: TextButton(
                child: Text("Continue"),
                onPressed: () {
                  _completeSplash(context, MainScreen());
                },
              ),))
          ],)),
    );
  }
  void _completeSplash(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (BuildContext context) => widget));
}
}


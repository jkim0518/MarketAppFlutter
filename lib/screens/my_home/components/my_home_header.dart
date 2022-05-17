// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marketapp/screens/components/default_button.dart';

class MyHomeHeader extends StatelessWidget {
  const MyHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            SizedBox(
              width: 250,
              child: Text(
                "Sing in to get\n more rewards!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Tap to see deals 〉",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: DefaultButton(
                text: "Sign In/Sign Up",
                press: () {},
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
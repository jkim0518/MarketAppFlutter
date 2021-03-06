// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../theme.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Sign In",
          style: textTheme().subtitle1?.copyWith(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      //body: KurlySignFrom(),
    );
  }
}

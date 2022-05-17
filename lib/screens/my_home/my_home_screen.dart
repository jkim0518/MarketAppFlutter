// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapp/screens/components/custom_actions.dart';
import 'package:marketapp/screens/my_home/components/my_home_body.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("My Home"),
        actions: [
          CustomActions()
          ],
      ),
      body: SingleChildScrollView(
        child: MyHomeBody(),
      ),
    );
  }
}
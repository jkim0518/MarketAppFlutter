

import 'package:flutter/material.dart';
import 'package:marketapp/screens/main_screen.dart';
import 'package:marketapp/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SpalshScreen.routeName:(context) => SpalshScreen(),
  MainScreen.routeName: (context) => MainScreen()
};
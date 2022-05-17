

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:marketapp/screens/details/details_screen.dart';
import 'package:marketapp/screens/main_screen.dart';
import 'package:marketapp/screens/signin/singin_screen.dart';
import 'package:marketapp/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SpalshScreen.routeName:(context) => SpalshScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  DetailsScreen.routeName :(context) => DetailsScreen()
};
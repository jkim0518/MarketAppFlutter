// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class TextMenu {
  String? text;
  Icon? icon;
  String? path;

  TextMenu({this.text, this.icon, this.path});
}

// Menu Data
List<TextMenu> textMenuList = [
  TextMenu(text: "Delivery Information", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "Announcements", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "FAQ", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "Customer Service", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "About Foodie", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "Terms and Conditions", icon: Icon(Icons.arrow_right), path: "/"),
];
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
  TextMenu(text: "배송 안내", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "공지 사항", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "자주하는 질문", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "고객센터", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "이용안내", icon: Icon(Icons.arrow_right), path: "/"),
  TextMenu(text: "컬리 소개", icon: Icon(Icons.arrow_right), path: "/"),
];
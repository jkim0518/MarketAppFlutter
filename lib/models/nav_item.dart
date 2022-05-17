// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavItem {
  final int id;
  //final String icon;
  final String label;
  final Icon icon;

  NavItem({required this.label, required this.id, required this.icon
  });
}

List<NavItem> navItems = [
  NavItem(label: "Home", id: 0, icon: Icon(Icons.home_outlined)),
  NavItem(label: "Recommend", id: 1, icon: Icon(Icons.star_outline)),
  NavItem(label: "Category", id: 2, icon: Icon(Icons.article_outlined)),
  NavItem(label: "Search", id: 3, icon: Icon(Icons.search)),
  NavItem(label: "MyHome", id: 4, icon: Icon(Icons.person_outline)),
];
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketapp/constants.dart';
import 'package:marketapp/models/nav_item.dart';
import 'package:marketapp/screens/category/category_screen.dart';
import 'package:marketapp/screens/home/home_screen.dart';
import 'package:marketapp/screens/my_home/my_home_screen.dart';
import 'package:marketapp/screens/recommend/recommend_screen.dart';
import 'package:marketapp/screens/search/search_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  static String routeName = "/main_screen";

  @override
  _MainScreenState createState() => _MainScreenState();
}

  class _MainScreenState extends State<MainScreen> {

    int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          RecommendScreen(),
          CategoryScreen(),
          SearchScreen(),
          MyHomeScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        onTap: onTapped,
        items: List.generate(
          navItems.length,
          (index) => _buildBottomNavigationBarItem(
            icon: navItems[index].icon,
            label: navItems[index].label,
            isActive: navItems[index].id == _selectedIndex ? true : false,
          ),
          ),
      ),
      );
  }
  void onTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _buildBottomNavigationBarItem(
    {Widget? icon,
    String? label,
    bool isActive = false,
    GestureTapCallback? press}) {
      return BottomNavigationBarItem(
        icon: SizedBox(
          width: 38,
          height: 38,
          child: IconButton(
            onPressed: press,
            icon: icon ?? Icon(Icons.star),
            color: isActive ? kPrimaryColour : Colors.black),
          ),
        label: label
        );
    }
}


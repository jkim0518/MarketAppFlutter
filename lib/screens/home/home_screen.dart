// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:marketapp/screens/home/components/market_page.dart';
import 'package:marketapp/screens/home/components/thrify_shopping_page.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../components/custom_actions.dart';
import 'components/benefit_page.dart';
import 'components/new_product_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 1
    List<String> categories = ["Recommended", "New", "This week's deal", "Good values"];
    // 2
    return DefaultTabController(
      // 3
      initialIndex: 0,
      // 4
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Foodie"),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 0.3, color: Colors.grey)),
                  color: Colors.white),
              child: TabBar(
                tabs: List.generate(
                  categories.length,
                  (index) => Tab(
                    text: categories[index],
                  ),
                ),
                // 5
                labelColor: kPrimaryColour,
                // 6
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().headline2?.copyWith(
                    color: kPrimaryColour, fontWeight: FontWeight.bold),
                // 7
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColour),
                ),
              ),
            ),
            preferredSize: Size.fromHeight(42),
          ),
        ),
        // 8
        body: TabBarView(
          children: [
            MarketPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage()
          ],
        ),
      ),
    );
  }
}
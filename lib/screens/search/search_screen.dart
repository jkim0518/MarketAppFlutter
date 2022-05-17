// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import '../../constants.dart';
import '../components/custom_actions.dart';
import 'components/default_search_field.dart';

class SearchScreen extends StatelessWidget {
  // 1
  final List searchKeyword = ["Marinated beef", "Chicken", "Pork", "Pork bone soup", "Shrimp"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [CustomActions()],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // 2
            DefaultSearchField(),
            const SizedBox(height: 20),
            Text("Popular now", style: TextStyle(color: kTextColor)),
            // 3
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 400,
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  child: SizedBox(
                    height: 50,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        searchKeyword[index],
                        style: TextStyle(color: kPrimaryColour, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => Divider(
                  thickness: 0.5,
                  height: 0,
                ),
                itemCount: searchKeyword.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:marketapp/screens/category/extends_icon_text_card.dart';
import 'package:marketapp/screens/category/image_text_card.dart';
import '../../constants.dart';
import '../../theme.dart';
import '../components/custom_actions.dart';
import '../components/text_menu_card.dart';
import '../../models/list_category_menu.dart';
import '../../models/grid_category_menu.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        automaticallyImplyLeading: false,
        actions: [CustomActions()],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 55,
              child: TextMenuCard(
                title: "Favourites",
                icon: Icon(Icons.arrow_right),
                textColour: kPrimaryColour,
                iconColour: kPrimaryColour,
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          // 1
          SliverList(
            delegate: SliverChildListDelegate(
                // 2
                List.generate(
                    listCategoryMenuList.length,
                    (index) => ExtendsIconTextCard(
                          item: listCategoryMenuList[index],
                        ))
                // listCategoryMenuList
                //     .map((e) => ExtendsIconTextCard(item: e))
                //     .toList(),
                ),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 12, color: Colors.grey[200], thickness: 12),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 40, 0, 20),
            sliver: SliverToBoxAdapter(
              child: Text(
                "Recommended",
                style: textTheme().headline2,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 16, right: 16, bottom: 40),
            // 3
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 10,
                // 4
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  // 5
                  return ImageTextCard(
                    item: gridCategoryMenuList[index],
                  );
                },
                // 6
                childCount: gridCategoryMenuList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
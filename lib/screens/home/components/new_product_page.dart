// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketapp/models/product.dart';
import 'package:marketapp/screens/components/product_item.dart';
import 'package:marketapp/screens/home/components/circle_container.dart';
import 'package:marketapp/screens/home/components/product_filter_button.dart';

class NewProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      // 1
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverRefreshControl(
            onRefresh: () {
              return Future<void>.delayed(const Duration(seconds: 1));
            },
          ),
          // 2
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              SizedBox(
                child: ProductFilterButton(),
                width: 100,
              )
            ],
          ),
          // 3
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              // 4
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                // 5
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                          iconPath: 'assets/icons/shopping-cart.svg'),
                    )
                  ],
                );
              },
              // 6
              childCount: productList.length,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../theme.dart';
import 'components/card_product_item.dart';
import 'components/stack_product_item.dart';

class RecommendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recommended"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "Popular in Bakery",
              style: textTheme().headline1,
            ),
          ),
          const SizedBox(height: 15),
          Container(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => StackProductItem(
                width: 160,
                item: productList[index],
                number: index + 1,
              ),
              itemCount: productList.length,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text("Products with good reviews", style: textTheme().headline1),
          ),
          const SizedBox(height: 15),
          Container(
            height: 360,
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 40),
              scrollDirection: Axis.horizontal,
              // 1
              itemBuilder: (context, index) => SizedBox(
                width: 320,
                child: CardProductItem(
                  item: productList[index],
                ),
              ),
              itemCount: productList.length,
            ),
          )
        ],
      ),
    );
  }
}
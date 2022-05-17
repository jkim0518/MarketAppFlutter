// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';

class CardProductItem extends StatelessWidget {
  final Product item;

  const CardProductItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // 1
    return Card(
      elevation: 1,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 2
          Expanded(
            child: ProductItem(
              product: item,
              lineChange: true,
              textContainerHeight: 50,
            ),
          ),
          // 3
          Container(
            height: 80,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Color(0xFFF5F5F5)),
              ),
            ),
            // ignore: prefer_const_constructors
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "It is super cheesy and delicious!"
                  "I cooked this in an air fryer and it was awesome",
                  textAlign: TextAlign.center,
                  // 4
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
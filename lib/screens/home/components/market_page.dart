import 'package:flutter/material.dart';
import 'package:marketapp/models/product.dart';
import 'package:marketapp/screens/components/product_item.dart';
import 'package:marketapp/screens/home/components/market_banner_item.dart';
import '../../../theme.dart';
// import 상대 위치 사용

class MarketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // 1
        SizedBox(
          height: 335,
          child: MarketBannerItem(),
        ),
        SizedBox(height: 25),
        Padding(
          padding: EdgeInsets.only(left: 16, bottom: 16),
          child: Text("What about this item?", style: textTheme().headline1),
        ),
        // 2
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: ProductItem(
                  product: productList[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
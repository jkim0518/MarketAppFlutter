// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'stack_icon.dart';

class CustomActions extends StatelessWidget {

const CustomActions({
    Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Row(
        children: [
          SizedBox(
            width: 38,
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.pin),
                  color: Colors.white,
                ),
          ),
          SizedBox(
            width: 38,
            child: StackIcon(
              imgPath: Icon(Icons.shopping_cart),
              onPressed: () {},
              counter: "2",
            ),
          )
        ],
      ),
    );
  }
}
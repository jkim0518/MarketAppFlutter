// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapp/constants.dart';

class StackIcon extends StatelessWidget {

  final Icon? imgPath;
  final GestureTapCallback? onPressed;
  final String? counter;

  const StackIcon({
    Key? key,
    this.imgPath,
    this.onPressed,
    this.counter,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onPressed, 
          icon: imgPath ?? Icon(Icons.shopping_cart),
          color: Colors.white,
          ),
          Positioned(
            top: 10,
            right: 5,
            child: Container(
              width: 14,
              height: 14,
              child: Center(
                child: Text(
                  "$counter",
                  style: TextStyle(fontSize: 10, color: kPrimaryColour),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0)
              ),
            ),
          )
      ],
    );
  }
}
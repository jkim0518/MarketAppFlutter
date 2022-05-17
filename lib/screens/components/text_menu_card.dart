// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextMenuCard extends StatelessWidget {

  final String? title;
  final Widget? icon;
  final GestureTapCallback? press;
  final Color? textColour;
  final Color? iconColour;

  const TextMenuCard({
    Key? key,
    this.title,
    this.icon,
    this.press,
    this.textColour = Colors.black,
    this.iconColour = Colors.grey
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        elevation: 0,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title ?? "",
                style: TextStyle(color: textColour, fontSize: 16),
              ),
              Spacer(),
              SizedBox(
                width: 26,
                child: IconButton(
                  onPressed: () {},
                  icon: icon ?? Icon(Icons.arrow_right),
                  color: iconColour,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
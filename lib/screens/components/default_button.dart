// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marketapp/constants.dart';
import 'package:marketapp/theme.dart';

class DefaultButton extends StatelessWidget {

final String? text;
final GestureTapCallback? press;
final Color colour;

  const DefaultButton(
    {Key? key,
    this.text,
    this.press,
    this.colour = kPrimaryColour}
    ) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: colour,
        padding: EdgeInsets.all(16)
      ),
      onPressed: press,
      child: Center(
        child: Text(
          text ?? "",
          style: textTheme().subtitle1,
        ),
      )
      );
  }
}
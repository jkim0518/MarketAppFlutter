// ignore_for_file: prefer_final_fields, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../theme.dart';

class ProductFilterButton extends StatefulWidget {
  @override
  _ProductFilterButtonState createState() => _ProductFilterButtonState();
}

class _ProductFilterButtonState extends State<ProductFilterButton> {
  // 1
  String _selectedUItem = 'New';
  // 2
  List _options = ['New', 'Popular', 'On Promotion'];
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      padding: EdgeInsets.zero,
      // 3
      offset: Offset(0, 0),
      icon: Align(
        alignment: Alignment.bottomRight,
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("$_selectedUItem",
                  style: textTheme().bodyText2?.copyWith(color: Colors.black)),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          onPressed: null,
        ),
      ),

      onSelected: (value) {
        setState(() {
          _selectedUItem = value.toString();
        });
      },
      itemBuilder: (BuildContext context) {
        // 3
        return _options
            .map((option) => PopupMenuItem(
                  child: Text("$option", style: textTheme().bodyText2),
                  value: option,
                ))
            .toList();
      },
    );
  }
}
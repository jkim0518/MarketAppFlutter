// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultSearchField extends StatefulWidget {
  @override
  _DefaultSearchFieldState createState() => _DefaultSearchFieldState();
}

class _DefaultSearchFieldState extends State<DefaultSearchField> {
  // 1
  FocusNode _focusNode = FocusNode();
  // 2
  bool isFocus = false;
  @override
  void initState() {
    super.initState();
    // 3
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    // 4
    _focusNode.addListener(() {
      _onFocusChange();
    });
  }

  // 5
  void _onFocusChange() {
    setState(() {
      isFocus = !isFocus;
    });
  }

  // 6
  void _unFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            // 7
            focusNode: _focusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[100],
              hintText: "Search your product",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Container(
          // 8
          width: isFocus ? 50 : 0,
          // 9
          child: isFocus
              ? Center(
                  child: GestureDetector(
                    onTap: _unFocus,
                    child: Text(
                      "Cancel",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )
              : SizedBox(),
        )
      ],
    );
  }
}
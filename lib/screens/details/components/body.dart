// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/product.dart';
import '../../../string_extensions.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 500,
          child: Image.network(
            product.imageUrl ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                product.title ?? "",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text("Details",
                  style: TextStyle(fontSize: 16, color: kTextColor)),
              const SizedBox(height: 16),
              Text(
                "${product.price.toString().numberFormat()}원",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Sign in to get more rewards",
                style: TextStyle(fontSize: 16, color: kPrimaryColour),
              )
            ],
          ),
        ),
      ],
    );
  }
}
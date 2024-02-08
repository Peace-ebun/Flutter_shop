// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:fluttershop/Product.dart';

import 'cartcounter.dart';

class favourite extends StatelessWidget {
  const favourite({
    Key? key,
    required this.produce,
  }) : super(key: key);

  final Product produce;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      cartcounter(),
      Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: produce.color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            size: 15,
            color: Colors.white,
          ))
    ]);
  }
}

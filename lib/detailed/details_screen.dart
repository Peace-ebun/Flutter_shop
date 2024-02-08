// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttershop/constant.dart';
import 'package:fluttershop/detailed/body.dart';
import '../Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product produce;
  const DetailsScreen({Key? key, required this.produce}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: produce.color,
      appBar: buildappbar(),
      body: Body(
        produce: produce,
      ),
    );
  }

  AppBar buildappbar() {
    return AppBar(
      backgroundColor: produce.color,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        SizedBox(
          width: kdefaultPadding / 2,
        )
      ],
    );
  }
}

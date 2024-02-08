// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:fluttershop/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'body.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildappbar(),
      body: body(),
    );
  }

  AppBar buildappbar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kdefaultPadding / 2),
        ]);
  }
}

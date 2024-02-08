// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, sized_box_for_whitespace, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fluttershop/constant.dart';

import '../Product.dart';
import 'addtocart.dart';
import 'colorandsize.dart';
import 'description.dart';
import 'favourite.dart';
import 'producttitleimage.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.produce}) : super(key: key);
  final Product produce;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kdefaultPadding,
                      right: kdefaultPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      colorandSize(produce: produce),
                      SizedBox(height: kdefaultPadding / 2),
                      description(produce: produce),
                      SizedBox(height: kdefaultPadding / 2),
                      favourite(produce: produce),
                      SizedBox(height: kdefaultPadding / 2),
                      addtocart(produce: produce)
                    ],
                  ),
                ),
                ProductWithTitleImage(produce: produce)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class colordot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const colordot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: kdefaultPadding / 4, right: kdefaultPadding / 2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}

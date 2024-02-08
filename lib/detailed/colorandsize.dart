// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

import '../Product.dart';
import '../constant.dart';
import 'body.dart';

class colorandSize extends StatelessWidget {
  const colorandSize({
    Key? key,
    required this.produce,
  }) : super(key: key);

  final Product produce;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("color"),
              Row(
                children: [
                  colordot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  colordot(color: Color(0xFFF8C078), isSelected: true),
                  colordot(color: Color(0xFFA29898), isSelected: true)
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            TextSpan(text: "size\n"),
            TextSpan(
                text: "${produce.size} cm",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold))
          ])),
        )
      ],
    );
  }
}

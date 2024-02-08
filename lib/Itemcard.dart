// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

import 'Product.dart';
import 'constant.dart';

class ItemCard extends StatelessWidget {
  final Product produce;
  final press;

  const ItemCard({
    Key? key,
    required this.produce,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(kdefaultPadding),
            decoration: BoxDecoration(
              color: produce.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Hero(
              tag: "${produce.id}",
              child: Image.asset(produce.image),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kdefaultPadding / 4),
            child:
                Text(produce.title, style: TextStyle(color: kTextLightColor)),
          ),
          Text(
            "\$${produce.price} ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

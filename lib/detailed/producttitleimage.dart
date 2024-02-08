// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Product.dart';
import '../constant.dart';

class ProductWithTitleImage extends StatelessWidget {
  const ProductWithTitleImage({
    Key? key,
    required this.produce,
  }) : super(key: key);

  final Product produce;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic handbag',
            style: TextStyle(color: Colors.white),
          ),
          Text(produce.title,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
          SizedBox(width: kdefaultPadding),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "price\n",
                    ),
                    TextSpan(
                        text: "\$${produce.price}",
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(width: kdefaultPadding),
              Expanded(
                  child: Hero(
                tag: "${produce.id}",
                child: Image.asset(
                  produce.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}

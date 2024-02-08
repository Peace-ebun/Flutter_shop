// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:fluttershop/constant.dart';
import 'package:fluttershop/detailed/details_screen.dart';
import 'Itemcard.dart';
import 'Product.dart';
import 'categories.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kdefaultPadding,
                  crossAxisSpacing: kdefaultPadding,
                  crossAxisCount: 2),
              itemBuilder: (context, index) => ItemCard(
                produce: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        produce: products[index],
                      ),
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

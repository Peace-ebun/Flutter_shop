// ignore_for_file: prefer_const_constructors, deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';

import '../Product.dart';
import '../constant.dart';

class addtocart extends StatelessWidget {
  const addtocart({
    Key? key,
    required this.produce,
  }) : super(key: key);

  final Product produce;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultPadding),
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(right: kdefaultPadding),
              height: 50,
              width: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: produce.color,
                ),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: produce.color,
                ),
                onPressed: () {},
              )),
          Expanded(
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: produce.color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  child: Text(
                    "buy now".toUpperCase(),
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

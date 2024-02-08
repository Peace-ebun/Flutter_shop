// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import '../constant.dart';

class cartcounter extends StatefulWidget {
  const cartcounter({Key? key}) : super(key: key);

  @override
  State<cartcounter> createState() => _cartcounterState();
}

class _cartcounterState extends State<cartcounter> {
  int numofItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildoutlinebutton(
            icon: Icons.remove,
            press: () {
              if (numofItems > 1) {
                setState(() {
                  numofItems--;
                });
              }
            }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kdefaultPadding / 2),
          child: Text(
            numofItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildoutlinebutton(
            icon: Icons.add,
            press: () {
              if (numofItems < 20) {
                setState(() {
                  numofItems++;
                });
              }
            }),
      ],
    );
  }

  SizedBox buildoutlinebutton({required IconData icon, required press}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.zero),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13)))),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}

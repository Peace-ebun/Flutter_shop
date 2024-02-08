// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

import '../Product.dart';
import '../constant.dart';

class description extends StatelessWidget {
  const description({
    Key? key,
    required this.produce,
  }) : super(key: key);

  final Product produce;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kdefaultPadding),
      child: Text(produce.description, style: TextStyle(height: 1.5)),
    );
  }
}

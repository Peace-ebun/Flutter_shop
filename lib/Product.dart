// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.color,
    required this.size,
    required this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Office Code",
    price: 234,
    size: 12,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/blue.png",
    color: Colors.blue,
  ),
  Product(
    id: 2,
    title: "Shopping Bag",
    price: 345,
    size: 11,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/yellow.png",
    color: Colors.blueGrey,
  ),
  Product(
    id: 3,
    title: "Laptopbag",
    price: 200,
    size: 15,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/black.png",
    color: Colors.black,
  ),
  Product(
    id: 4,
    title: "School Bag",
    price: 246,
    size: 16,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/pink.png",
    color: Colors.pink,
  ),
  Product(
    id: 5,
    title: "Fancy Bag",
    price: 235,
    size: 10,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/red.png",
    color: Colors.grey,
  ),
  Product(
    id: 6,
    title: "Belt Bag",
    price: 376,
    size: 8,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/brown.png",
    color: Colors.brown,
  ),
  Product(
    id: 7,
    title: "Tote Bag",
    price: 370,
    size: 15,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/wit.png",
    color: Colors.purple,
  ),
  Product(
    id: 8,
    title: "Clutch",
    price: 400,
    size: 7,
    description:
        "A smart Bag to give you a well organized storage of your personal items.Multi-function and large capacity, Suitable for office ,business, trip, collegeBuilt with strong and durable zippers,S-shaped ergonomic design of shoulder strap and scientific reasonable weight-bearing Function.",
    image: "assets/images/orange.png",
    color: Colors.black,
  ),
];

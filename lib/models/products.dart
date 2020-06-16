import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String picture;

  const Product({
    @required this.name,
    @required this.description,
    @required this.picture,
  });
}

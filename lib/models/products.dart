import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final String picture;

  const Product({
    this.id,
    @required this.name,
    @required this.description,
    @required this.picture,
  });
}

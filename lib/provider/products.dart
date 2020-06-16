import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lista_compras/data/dummy.dart';
import 'package:lista_compras/models/products.dart';

class Products with ChangeNotifier {
  final Map<String, Product> _items = {...DUMMY};

  List<Product> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  Product byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void out(Product product) {
    if (product == null) {
      return;
    }

    if (product.id != null && _items.containsKey(product.id)) {
      _items.update(
        product.id,
        (_) => Product(
          id: product.id,
          name: product.name,
          description: product.description,
          picture: product.picture,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => Product(
            id: id,
            name: product.name,
            description: product.description,
            picture: product.picture),
      );
    }
    notifyListeners();
  }

  void remove(Product product) {
    if (product.id != null && product.id != null) {
      _items.remove(product.id);
      notifyListeners();
    }
  }
}

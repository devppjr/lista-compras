import 'package:flutter/material.dart';
import 'package:lista_compras/components/product_item.dart';
import 'package:lista_compras/data/dummy.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = {...DUMMY};

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("List of products"),
        ),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (ctx, i) => ProductItem(products.values.elementAt(i)),
      ),
    );
  }
}

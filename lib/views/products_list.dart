import 'package:flutter/material.dart';
import 'package:lista_compras/components/product_item.dart';
import 'package:lista_compras/provider/products.dart';
import 'package:lista_compras/routes/app.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Products products = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
          title: Center(
            child: Text("List of products"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.PRODUCT_FORM);
              },
            )
          ]),
      body: ListView.builder(
        itemCount: products.count,
        itemBuilder: (ctx, i) => ProductItem(products.byIndex(i)),
      ),
    );
  }
}

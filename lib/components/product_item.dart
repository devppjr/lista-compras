import 'package:flutter/material.dart';
import 'package:lista_compras/models/products.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    final productPicture = product.picture == null || product.picture.isEmpty
        ? CircleAvatar(child: Icon(Icons.fastfood))
        : CircleAvatar(
            backgroundImage: NetworkImage(product.picture),
          );

    return ListTile(
      leading: productPicture,
      title: Text(product.name),
      subtitle: Text(product.description),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit),
              color: Colors.orange,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

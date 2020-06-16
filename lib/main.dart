import 'package:flutter/material.dart';
import 'package:lista_compras/provider/products.dart';
import 'package:lista_compras/routes/app.dart';
import 'package:lista_compras/views/product_form.dart';
import 'package:lista_compras/views/products_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => new Products(),
        )
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            AppRoutes.HOME: (_) => ProductList(),
            AppRoutes.PRODUCT_FORM: (_) => ProductForm(),
          }),
    );
  }
}

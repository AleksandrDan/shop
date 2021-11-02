import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemi/providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final String productId =
        ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct = context
        .watch<Products>().findById(productId);
        

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}

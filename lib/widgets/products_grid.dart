import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:udemi/providers/products.dart';
import 'package:udemi/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid(this.showFavs);
  @override
  Widget build(BuildContext context) {
    final productsData = context.watch<Products>();
    final products = showFavs ? productsData.favoriteItems : productsData.item;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) =>
          ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
      itemCount: products.length,
      padding: EdgeInsets.all(10),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemi/providers/product.dart';
import 'package:udemi/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = context.watch<Product>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routName,
              arguments:product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          leading: IconButton(
            icon: Icon(product.isFavorite ==  false ?  Icons.favorite_border : Icons.favorite ),
            onPressed: () {product.togleFavoriteStatus();},
            color: Theme.of(context).accentColor,
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () { },
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}

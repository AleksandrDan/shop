import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemi/providers/products.dart';
import 'package:udemi/widgets/products_grid.dart';

enum FiltersOptions { Favorite, All }

class ProductsOverviewScreen extends StatefulWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  bool _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              onSelected: (FiltersOptions select) {
                setState(() {
                  if (select == FiltersOptions.Favorite) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
              itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('Only favorite'),
                      value: FiltersOptions.Favorite,
                    ),
                    PopupMenuItem(
                      child: Text('Show all'),
                      value: FiltersOptions.All,
                    ),
                  ]),
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}

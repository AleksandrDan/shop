import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemi/providers/products.dart';
import 'package:udemi/screens/product_detail_screen.dart';
import 'package:udemi/screens/product_overview_screen.dart';

main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routName: (ctx) => ProductDetailScreen(),
        },
        theme: ThemeData(primaryColor: Colors.purple, accentColor: Colors.orange, fontFamily: 'Lato'),
      ),
    );
  }
}

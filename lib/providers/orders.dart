import 'package:flutter/material.dart';
import 'package:udemi/providers/cart.dart';

class OrderItem {
  final String id;
  final double amaunt;
  final List<CartItem> products;
  final DateTime dataTime;

  OrderItem(
      {required this.id,
      required this.amaunt,
      required this.products,
      required this.dataTime});
}

class Orders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders => [..._orders];

  void addOrder(List<CartItem> carProducts, double total) {
    _orders.insert(
        0,
        OrderItem(
          id: DateTime.now().toString(),
          amaunt: total,
          dataTime: DateTime.now(),
          products: carProducts
        ));
        notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemi/providers/orders.dart' show Orders;
import 'package:udemi/widgets/app_drawer.dart';
import 'package:udemi/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  static const routName = '/orders-screen';
  @override
  Widget build(BuildContext context) {
    final orderData = context.watch<Orders>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Your orders'),
      ),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, index) => OrderItem(orderData.orders[index]),
      ),
      drawer: AppDrawer(),
    );
  }
}

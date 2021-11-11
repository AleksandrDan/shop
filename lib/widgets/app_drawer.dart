import 'package:flutter/material.dart';
import 'package:udemi/screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Hello Friends'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('SHOP'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('ORDERS'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routName);
            },
          ),
        ],
      ),
    );
  }
}

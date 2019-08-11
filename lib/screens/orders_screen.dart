import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/app_drawer.dart';
import 'package:flutter_shopping_app/widgets/order_item.dart';
import 'package:provider/provider.dart';

import '../providers/order.dart' show Orders;

class OrdersScreen extends StatelessWidget {
  static final routeName = "/orders-screen";
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, i) => OrderItem(orderData.orders[i]),
      ),
    );
  }
}

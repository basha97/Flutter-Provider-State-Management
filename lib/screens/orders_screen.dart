import 'package:flutter/material.dart';
import 'package:provider_state_management_basic/widgets/order_item.dart'
    as prefix0;
import '../providers/orders.dart';
import 'package:provider/provider.dart';
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Orders'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, i) => prefix0.OrderItem(orderData.order[i]),
        itemCount: orderData.order.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider_state_management_basic/providers/orders.dart' ;
import '../providers/orders.dart' as ord;
import 'package:intl/intl.dart';
import '../widgets/order_item.dart';

class OrderItem extends StatelessWidget {
    final  ord.OrderItem order;
    OrderItem(this.order);
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        child: Column(
            children: <Widget>[
                ListTile(
                    title: Text('\$${order.amount}'),
                    subtitle: Text(DateFormat('dd/MM/yyy hh:mm').format(order.dateTime)),
                    trailing: IconButton(icon: Icon(Icons.expand_more), onPressed: null),
                )
            ],
        ),
    );
  }
}

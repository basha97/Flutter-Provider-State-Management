import 'package:flutter/material.dart';

class ProdcutsDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProdcutsDetailScreen(this.title,this.price);
  static const routeName  = '/product-details';
  @override
  Widget build(BuildContext context) {
    final productId   = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
    );
  }
}
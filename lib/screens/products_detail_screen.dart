import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products.dart';

class ProdcutsDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;

  // ProdcutsDetailScreen(this.title,this.price);
  static const routeName  = '/product-details';
  @override
  Widget build(BuildContext context) {
    final productId   = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context,listen: false).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
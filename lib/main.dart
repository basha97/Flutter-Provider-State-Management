import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import './screens/cart_screen.dart';

import './screens/products_detail_screen.dart';

import './screens/products_overview_screen.dart';

import './providers/products.dart';

import './providers/cart.dart';

import './providers/orders.dart';

import './screens/orders_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Products()),
        ChangeNotifierProvider.value(value: Cart()),
        ChangeNotifierProvider.value(value: Orders())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            accentColor: Colors.deepOrange,
            fontFamily: 'Lato'),
        home: ProductsOverviewSreen(),
        routes: {
          ProdcutsDetailScreen.routeName: (ctx) => ProdcutsDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen()
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State management'),
      ),
      body: Center(
        child: Text('Let\s build the application'),
      ),
    );
  }
}

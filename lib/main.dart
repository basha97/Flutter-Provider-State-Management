import 'package:flutter/material.dart';
import 'package:provider_state_management_basic/widgets/product_item.dart';
import './screens/products_detail_screen.dart';

import './screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
		accentColor: Colors.deepOrange,
		fontFamily: 'Lato'
      ),
      home: ProductsOverviewSreen(),
	  routes: {
		  ProdcutsDetailScreen.routeName: (ctx) => ProdcutsDetailScreen()
	  },
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
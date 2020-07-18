import 'package:flutter/material.dart';

import './product_manager.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // The primary swatch is a set of colors where we define one
        //   color and the other colors will be inferred automatically.
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple,
        brightness: Brightness.light
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: ProductManager('Food Tester')
      )
    );
  }
}

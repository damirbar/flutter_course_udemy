import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;
  // For named arguments we use curly braces.
  // For positional ones only optional ones are wrapped but then
  //   with squared brackets
  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return Column(
      children: 
        products.map((elem) => Card(
          child: Column(
            children: <Widget>[
              Image.asset('assets/banana.jpg'),
              Text(elem)
            ],
          ),
        ))
      .toList()
    );
  }

}


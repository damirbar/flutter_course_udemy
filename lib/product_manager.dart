import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager Widget] createState()');
    return _ProductManagerState();
  }

}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = []; 

  @override
  void initState() {
    print('[ProductManager State] initState()');

    // "widget" is provided by the State object.
    // It gives us access to the connected StatefulWidget and to
    //   its properties.
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    // This will be executed whenever the connected widget receives
    //   new external data.
    // We get the old widget just in case we need something from there.
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(children:
      [Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          // Using the theme color for the button
          color: Theme.of(context).primaryColor,
          onPressed: () {
            // If we just change the state w/o telling flutter,
            //   it will not refresh the state.
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
          child: Text('Add Product')
        ),
      ),
      Products(_products),
      ]
    );

  }

}

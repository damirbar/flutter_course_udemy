import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          // Using the theme color for the button.
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addProduct('Sweets');
          },
          child: Text('Add Product')
        );
  }

}

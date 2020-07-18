import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  
  List<String> _products = ['Food Tester']; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
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
            Column(children:
              _products.map((elem) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/banana.jpg'),
                    Text(elem)
                  ],
                ),
              ))
              .toList(),
            )
          ],
        )
      ),
    );
  }
}

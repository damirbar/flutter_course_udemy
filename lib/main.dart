// 1) Create a new Flutter App and output an AppBar and some text below it.
// 2) Add a button which changes the text (to any other text).
// 3) Split the app into three widgets: App, TextControl and Text

import 'package:flutter/material.dart';

void main() => runApp(TextApp());

class TextApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextAppState();
  }
}

class _TextAppState extends State<TextApp> {

  String _mainText = 'This is the first assignment';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text App'),
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _mainText = 'This changed!';
                });
              },
              child: Text('Change Text'),
            ),
            Text(_mainText)
            ],
        )
      )
    );
  }

}

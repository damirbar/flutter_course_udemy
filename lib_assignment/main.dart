// 1) Create a new Flutter App and output an AppBar and some text below it.
// 2) Add a button which changes the text (to any other text).
// 3) Split the app into three widgets: App, TextControl and Text

import 'package:flutter/material.dart';

import './text_control.dart';

void main() => runApp(TextApp());

class TextApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text App'),
        ),
        body: TextControl()
      )
    );
  }

}

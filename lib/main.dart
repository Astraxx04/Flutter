import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(children: [
          Text('Answer the questions'),
          Text('What is  1 + 1'),
          ElevatedButton(
            child: Text('3'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('2'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('4'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}

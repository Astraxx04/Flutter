import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _queindex = 0;
  void _answerQuestion() {
    setState(() {
      _queindex = _queindex + 1;
    });
    print(_queindex);
  }

  @override
  Widget build(BuildContext context) {
    var ques = ['Fav Colour', 'Fav Car', 'Fav Chocolate'];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              Questions(ques[_queindex]),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: _answerQuestion, child: Text('Answer 3')),
            ],
          )),
    );
  }
}

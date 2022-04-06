import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answer() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  var questions = [
    'What\'s your favourite colour?',
    'What\'s your favourite animal?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(children: [
          Text('Answer the questions'),
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text('3'),
            onPressed: answer,
          ),
          ElevatedButton(
            child: Text('2'),
            onPressed: answer,
          ),
          ElevatedButton(
            child: Text('4'),
            onPressed: answer,
          ),
        ]),
      ),
    );
  }
}

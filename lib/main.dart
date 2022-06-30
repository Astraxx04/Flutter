import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var queindex = 0;
  void answerQuestion() {
    queindex = queindex + 1;
    print(queindex);
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
              Text(ques[queindex]),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 1')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 2')),
              ElevatedButton(
                  onPressed: answerQuestion, child: Text('Answer 3')),
            ],
          )),
    );
  }
}

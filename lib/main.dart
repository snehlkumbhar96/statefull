import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myAppState();
  }

}
class myAppState extends State<MyApp>{
  var questionIndex = 0;

  void answerQuestions()
  {
    setState(() {


    });
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favt color ?',
      'What\'s your favt animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Second App'),
        ),
        body:Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(child: Text('Answer 1'),onPressed: answerQuestions),
            RaisedButton(child: Text('Answer 2'),
              onPressed: () => print ('Answer 2 chosen!'),
            ),
            RaisedButton(child: Text('Answer 3'),onPressed: (){
              //...
              print('Answer 3 chosen');
            },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  final List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite food?',
  ];

  var currentQuestion = 0;

  void handleQuestionSelection(int index) {
    setState(() {
      currentQuestion = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions'),
        ),
        body: Column(
          children: [
            Text(questions[currentQuestion]),
            ElevatedButton(
                child: Text('Select first'),
                onPressed: () => handleQuestionSelection(0)),
            ElevatedButton(
                child: Text('Select second'),
                onPressed: () => handleQuestionSelection(1)),
            ElevatedButton(
                child: Text('Select second'),
                onPressed: () => handleQuestionSelection(2))
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  QuestionAppState createState() {
    return QuestionAppState();
  }
}

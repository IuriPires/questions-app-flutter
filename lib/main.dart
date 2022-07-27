import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  final List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite food?',
  ];

  var _currentQuestion = 0;

  void _handleQuestionSelection(int index) {
    setState(() {
      _currentQuestion = index;
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
            Question(questions[_currentQuestion]),
            ElevatedButton(
                child: Text('Select first'),
                onPressed: () => _handleQuestionSelection(0)),
            ElevatedButton(
                child: Text('Select second'),
                onPressed: () => _handleQuestionSelection(1)),
            ElevatedButton(
                child: Text('Select second'),
                onPressed: () => _handleQuestionSelection(2))
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}

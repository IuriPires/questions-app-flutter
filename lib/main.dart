import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatelessWidget {
  final List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite food?',
  ];

  void answerQuestion() {
    print('Answer chosen!');
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
            Text(questions[1]),
            ElevatedButton(
              child: Text('Click me'),
              onPressed: () => {
                print('Hello world')
              }
            )
          ],
        ),
      ),
    );
  }
}

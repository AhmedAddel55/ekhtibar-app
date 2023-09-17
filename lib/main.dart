import 'package:flutter/material.dart';
// ignore: unused_import
import 'app_barin.dart';

AppBarin appBarin = AppBarin();

void main() {
  runApp(const EkhtibarApp());
}

class EkhtibarApp extends StatelessWidget {
  const EkhtibarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('Ekhtibar'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: EkhtibarPage(),
        ),
      ),
    );
  }
}

class EkhtibarPage extends StatefulWidget {
  const EkhtibarPage({super.key});

  @override
  State<EkhtibarPage> createState() => _EkhtibarPageState();
}

class _EkhtibarPageState extends State<EkhtibarPage> {
  void checkAnswer(bool whatUserPiked) {
    bool correctAnswer = appBarin.getQuestionAnswer();
    setState(() {
      if (whatUserPiked == correctAnswer) {
        answerResult.add(
          const Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.thumb_up,
              color: Colors.green,
            ),
          ),
        );
      } else {
        answerResult.add(const Padding(
          padding: EdgeInsets.all(3.0),
          child: Icon(
            Icons.thumb_down,
            color: Colors.red,
          ),
        ));
      }

      appBarin.nextQuestion();
    });
  }

  List<Widget> answerResult = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: answerResult,
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              Image.asset(appBarin.getQuestionImage()),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                appBarin.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            child: const Text(
              'صح',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            onPressed: () {
              checkAnswer(true);
            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ElevatedButton(
            onPressed: () {
              checkAnswer(false);
            },
            style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
            child: const Text(
              'خطأ',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        )),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizzerPage extends StatefulWidget {
  const QuizzerPage({Key? key}) : super(key: key);

  @override
  State<QuizzerPage> createState() => _QuizzerPageState();
}

class _QuizzerPageState extends State<QuizzerPage> {
  List<Icon> scoreTracking = [].whereType<Icon>().toList();

  List questions = [];

  void checkResponse(bool response) {
    if (response) {
      scoreTracking.add(
        Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
    } else {
      scoreTracking.add(
        Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'I wanna know.\n'
                  'Have you ever seen the rain?',
                  style: TextStyle(
                    leadingDistribution: TextLeadingDistribution.proportional,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      checkResponse(true);
                    });
                  },
                  child: Center(
                    child: Text(
                      'True',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      checkResponse(false);
                    });
                  },
                  child: const Center(
                    child: Text(
                      'False',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: scoreTracking,
            ),
          ],
        ),
      ),
    );
  }
}

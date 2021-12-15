import 'package:flutter/material.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Survey'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
              onPressed: () { },
              icon: const Icon(Icons.logout_outlined)),
        ],
      ),
      body: Column(
        children: const [
          Text('Survey'),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
              onPressed: () { },
              icon: const Icon(Icons.logout_outlined)),
        ],
      ),
      body: Column(
        children: const [
          Text('Guide'),
        ],
      ),
    );
  }
}
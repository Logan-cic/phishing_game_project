import 'package:flutter/material.dart';

class Finalizado extends StatelessWidget {
  const Finalizado({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Game Phishing Finalizado"),
        ),
        body: Text('Acabou :)'),
      ),
    );;
  }
}
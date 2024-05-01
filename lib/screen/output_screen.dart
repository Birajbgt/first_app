import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String title;

  const OutputScreen({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello '),
      ),
      body: Center(child: Text("Hello World $title")),
    );
  }
}

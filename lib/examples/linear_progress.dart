import 'package:flutter/material.dart';

class LinearProgressExample extends StatelessWidget {
  const LinearProgressExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Progress Indicator'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: LinearProgressIndicator(
            color: Colors.teal, // Bar color
            backgroundColor: Colors.grey, // Background color
            minHeight: 8, // Thickness of the bar
          ),
        ),
      ),
    );
  }
}

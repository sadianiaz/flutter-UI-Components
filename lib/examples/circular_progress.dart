import 'package:flutter/material.dart';

class CircularProgressExample extends StatelessWidget {
  const CircularProgressExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular Progress Indicator'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.teal, // Spinner color
          strokeWidth: 5, // Thickness of the circle
        ),
      ),
    );
  }
}

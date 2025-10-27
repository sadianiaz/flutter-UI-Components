import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Widget Example'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2, // Takes 2 parts of space
            child: Container(
              color: Colors.red,
              child: const Center(child: Text('Box 1')),
            ),
          ),
          Expanded(
            flex: 1, // Takes 1 part of space
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Box 2')),
            ),
          ),
          Expanded(
            flex: 3, // Takes 3 parts of space
            child: Container(
              color: Colors.green,
              child: const Center(child: Text('Box 3')),
            ),
          ),
        ],
      ),
    );
  }
}

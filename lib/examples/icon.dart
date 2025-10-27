import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Class Example'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Icon(
          Icons.favorite, // The icon you want to show
          color: Colors.red, // Icon color
          size: 60.0, // Icon size
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HorizontalListExample extends StatelessWidget {
  const HorizontalListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Horizontal List Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 150, // height of the list
          child: ListView(
            scrollDirection: Axis.horizontal, // horizontal scroll
            children: [
              _buildCard('🍎 Apple', Colors.redAccent),
              _buildCard('🍌 Banana', Colors.yellow),
              _buildCard('🍇 Grapes', Colors.purple),
              _buildCard('🍊 Orange', Colors.orange),
              _buildCard('🍉 Watermelon', Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method for reusable card
  Widget _buildCard(String title, Color color) {
    return Container(
      width: 120,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

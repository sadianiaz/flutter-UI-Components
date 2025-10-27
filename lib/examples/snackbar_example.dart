import 'package:flutter/material.dart';

class SnackbarExample extends StatelessWidget {
  const SnackbarExample({super.key});

  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text(
        'This is a SnackBar message!',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.teal,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.yellow,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Undo clicked!'),
              duration: Duration(seconds: 2),
            ),
          );
        },
      ),
    );

    // Show the SnackBar
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
          onPressed: () => _showSnackBar(context),
          child: const Text('Show SnackBar', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}

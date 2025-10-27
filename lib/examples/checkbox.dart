import 'package:flutter/material.dart';

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false; // variable to store checkbox state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Example'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: isChecked, // current state
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!; // update state
                });
              },
              activeColor: Colors.teal, // color when checked
            ),
            const Text(
              'Accept Terms & Conditions',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

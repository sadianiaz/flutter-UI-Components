import 'package:flutter/material.dart';

class TabsExample extends StatelessWidget {
  const TabsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // total number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs Example'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            indicatorColor: Colors.white, // underline color
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.person), text: 'Profile'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('🏠 Home Page', style: TextStyle(fontSize: 20))),
            Center(
              child: Text('👤 Profile Page', style: TextStyle(fontSize: 20)),
            ),
            Center(
              child: Text('⚙️ Settings Page', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

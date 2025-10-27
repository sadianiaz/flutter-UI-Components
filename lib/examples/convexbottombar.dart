import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class ConvexBottomBarExample extends StatefulWidget {
  const ConvexBottomBarExample({super.key});

  @override
  State<ConvexBottomBarExample> createState() => _ConvexBottomBarExampleState();
}

class _ConvexBottomBarExampleState extends State<ConvexBottomBarExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('🏠 Home Page', style: TextStyle(fontSize: 22))),
    Center(child: Text('🔍 Search Page', style: TextStyle(fontSize: 22))),
    Center(child: Text('❤️ Favorites', style: TextStyle(fontSize: 22))),
    Center(child: Text('⚙️ Settings', style: TextStyle(fontSize: 22))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convex Bottom Bar Example'),
        backgroundColor: Colors.teal,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.teal,
        style: TabStyle.react, // animation style
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.favorite, title: 'Likes'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        initialActiveIndex: 0,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

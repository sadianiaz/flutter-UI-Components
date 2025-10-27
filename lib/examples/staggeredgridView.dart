import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridExample extends StatelessWidget {
  const StaggeredGridExample({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample list of images
    final List<String> images = [
      'https://picsum.photos/300/200?random=1',
      'https://picsum.photos/300/250?random=2',
      'https://picsum.photos/300/300?random=3',
      'https://picsum.photos/300/220?random=4',
      'https://picsum.photos/300/270?random=5',
      'https://picsum.photos/300/320?random=6',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered GridView Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MasonryGridView.count(
          crossAxisCount: 2, // Number of columns
          mainAxisSpacing: 8, // Vertical space
          crossAxisSpacing: 8, // Horizontal space
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(images[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}

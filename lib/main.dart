import 'package:flutter/material.dart';

import 'examples/icon.dart';
import 'examples/expanded.dart';
import 'examples/checkbox.dart';
import 'examples/carousel_slider.dart';
import 'examples/staggeredgridview.dart';
import 'examples/linear_progress.dart';
import 'examples/circular_progress.dart';
import 'examples/alertdialog.dart';
import 'examples/dialogs.dart';
import 'examples/handlingvideos.dart';
import 'examples/expansiontilecard.dart';
import 'examples/tabs.dart';
import 'examples/horizontallist.dart';
import 'examples/charts.dart';
import 'examples/convexbottombar.dart';
import 'examples/slidable.dart';
import 'examples/snackbar_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 🧩 List of all 16 examples
    final examples = [
      {'title': ' Icon Class', 'page': const IconExample()},
      {'title': ' Expanded Class', 'page': const ExpandedExample()},
      {'title': ' Checkbox Widget', 'page': const CheckboxExample()},
      {'title': ' Carousel Slider', 'page': const CarouselExample()},
      {'title': ' Staggered Grid View', 'page': const StaggeredGridExample()},
      {'title': ' Linear Progress', 'page': const LinearProgressExample()},
      {'title': ' Circular Progress', 'page': const CircularProgressExample()},
      {'title': ' Alert Dialog Box', 'page': const AlertDialogExample()},
      {'title': ' Dialogs Example', 'page': const SimpleDialogExample()},
      {'title': ' Handling Videos', 'page': const VideoPlayerExample()},
      {
        'title': ' Expansion Tile Card',
        'page': const ExpansionTileCardExample(),
      },
      {'title': ' Tabs Example', 'page': const TabsExample()},
      {'title': ' Horizontal List', 'page': const HorizontalListExample()},
      {'title': ' Working with Charts', 'page': const ChartsExample()},
      {'title': ' Convex Bottom Bar', 'page': const ConvexBottomBarExample()},
      {'title': ' Slidable Example', 'page': const SlidableExample()},
      {'title': ' Snackbar Example', 'page': const SnackbarExample()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Components'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: examples.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.widgets, color: Colors.teal),
              title: Text(
                examples[index]['title'].toString(),
                style: const TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => examples[index]['page'] as Widget,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

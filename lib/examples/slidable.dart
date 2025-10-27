import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableExample extends StatelessWidget {
  const SlidableExample({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      'Email from John',
      'Meeting Reminder',
      'Package Delivered',
      'New Friend Request',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slidable Example'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Slidable(
            key: ValueKey(index),

            // LEFT to RIGHT swipe
            startActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Marked "${items[index]}" as read'),
                      ),
                    );
                  },
                  backgroundColor: Colors.blue,
                  icon: Icons.mark_email_read,
                  label: 'Read',
                ),
              ],
            ),

            // RIGHT to LEFT swipe
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Deleted "${items[index]}"')),
                    );
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),

            // The main list tile
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ListTile(
                leading: const Icon(Icons.mail, color: Colors.teal),
                title: Text(items[index]),
                subtitle: const Text('Swipe left or right for actions'),
              ),
            ),
          );
        },
      ),
    );
  }
}

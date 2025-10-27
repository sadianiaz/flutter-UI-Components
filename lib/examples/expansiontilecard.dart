import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ExpansionTileCardExample extends StatelessWidget {
  const ExpansionTileCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExpansionTileCard Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: const [
            ExpansionTileCard(
              leading: Icon(Icons.account_circle, color: Colors.teal),
              title: Text('User Information'),
              subtitle: Text('Tap to expand'),
              children: [
                Divider(thickness: 1.0),
                ListTile(
                  leading: Icon(Icons.email, color: Colors.teal),
                  title: Text('Email: user@example.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text('Phone: +123 456 789'),
                ),
                ListTile(
                  leading: Icon(Icons.location_on, color: Colors.teal),
                  title: Text('Location: Karachi, Pakistan'),
                ),
              ],
            ),
            SizedBox(height: 10),
            ExpansionTileCard(
              leading: Icon(Icons.shopping_cart, color: Colors.teal),
              title: Text('Order Details'),
              subtitle: Text('Tap to see your order'),
              children: [
                Divider(thickness: 1.0),
                ListTile(
                  leading: Icon(Icons.local_offer, color: Colors.teal),
                  title: Text('Product: Flutter T-Shirt'),
                ),
                ListTile(
                  leading: Icon(Icons.attach_money, color: Colors.teal),
                  title: Text('Price: \$25'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

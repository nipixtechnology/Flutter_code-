import 'package:flutter/material.dart';

void main() {
  runApp(const CardBoxExample());
}

class CardBoxExample extends StatelessWidget {
  const CardBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CardBoxHome(),
    );
  }
}

class CardBoxHome extends StatelessWidget {
  const CardBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card & Box Widgets")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 CARD
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "This is a Card widget",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 LIST TILE
            const Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Prashanth"),
                subtitle: Text("Flutter Developer"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),

            const SizedBox(height: 16),

            // 🔹 CHIP
            const Wrap(
              spacing: 8,
              children: [
                Chip(label: Text("Flutter")),
                Chip(label: Text("Dart")),
                Chip(label: Text("UI")),
              ],
            ),

            const SizedBox(height: 16),

            // 🔹 DIVIDER
            const Divider(
              thickness: 2,
              color: Colors.grey,
            ),

            const SizedBox(height: 16),

            // 🔹 EXPANSION TILE
            const ExpansionTile(
              leading: Icon(Icons.info),
              title: Text("More Details"),
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "ExpansionTile expands and collapses content.",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

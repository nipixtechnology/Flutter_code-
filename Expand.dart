import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Expanded Example")),
        body: Row(
          children: [
            Container(
              width: 80,
              color: Colors.red,
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "Expanded",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

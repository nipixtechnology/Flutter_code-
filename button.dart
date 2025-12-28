import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonExample());
}

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Buttons Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 🔹 ELEVATED BUTTON
              ElevatedButton(
                onPressed: () {
                  debugPrint("Elevated Button Pressed");
                },
                child: const Text("Elevated Button"),
              ),

              const SizedBox(height: 16),

              // 🔹 OUTLINED BUTTON
              OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined Button Pressed");
                },
                child: const Text("Outlined Button"),
              ),

              const SizedBox(height: 16),

              // 🔹 TEXT BUTTON
              TextButton(
                onPressed: () {
                  debugPrint("Text Button Pressed");
                },
                child: const Text("Text Button"),
              ),

              const SizedBox(height: 16),

              // 🔹 ICON BUTTON
              IconButton(
                onPressed: () {
                  debugPrint("Icon Button Pressed");
                },
                icon: const Icon(Icons.favorite),
                color: Colors.red,
                iconSize: 30,
              ),

              const SizedBox(height: 30),

              // 🔹 FLOATING ACTION BUTTON
              FloatingActionButton(
                onPressed: () {
                  debugPrint("Floating Action Button Pressed");
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

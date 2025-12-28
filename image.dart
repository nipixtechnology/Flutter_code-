import 'package:flutter/material.dart';

void main() {
  runApp(const ImageExample());
}

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Image Widget Example"),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [

                const SizedBox(height: 20),

                // 🔹 IMAGE (Generic constructor)
                Image(
                  image: AssetImage('assets/flutter.png'),
                  width: 200,
                ),

                const SizedBox(height: 30),

                // 🔹 IMAGE.ASSET
                Image.asset(
                  'assets/flutter.png',
                  width: 200,
                ),

                const SizedBox(height: 30),

                // 🔹 IMAGE.NETWORK
                Image.network(
                  'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2x.png',
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

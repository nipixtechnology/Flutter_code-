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
          children:[
            Container(
              Width:50,
              color:Colors.red
            ),
            Container(
              width:50,
              color:Colors.blue
            )
          ]
      ),
    );
  }
}

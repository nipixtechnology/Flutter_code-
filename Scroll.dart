import 'package:flutter/material.dart';

void main() {
  runApp(const ScrollExample());
}

class ScrollExample extends StatelessWidget {
  const ScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollHome(),
    );
  }
}

class ScrollHome extends StatelessWidget {
  const ScrollHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Scrolling Widgets"),
          bottom: const TabBar(
            tabs: [
              Tab(text: "ListView"),
              Tab(text: "GridView"),
              Tab(text: "ScrollView"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ListViewExample(),
            GridViewExample(),
            ScrollViewExample(),
          ],
        ),
      ),
    );
  }
}

//////////////////// LISTVIEW ////////////////////
class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.list),
          title: Text("Item ${index + 1}"),
        );
      },
    );
  }
}

//////////////////// GRIDVIEW ////////////////////
class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: List.generate(6, (index) {
        return Container(
          color: Colors.green,
          child: Center(
            child: Text(
              "Box ${index + 1}",
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      }),
    );
  }
}

//////////// SINGLE CHILD SCROLL VIEW ////////////
class ScrollViewExample extends StatelessWidget {
  const ScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(10, (index) {
          return Container(
            height: 100,
            margin: const EdgeInsets.all(10),
            color: Colors.orange,
            child: Center(
              child: Text(
                "Container ${index + 1}",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }),
      ),
    );
  }
}

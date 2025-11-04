import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> elements = List.generate(1000, (i) => 'Article $i');

    return Scaffold(
      appBar: AppBar(title: Text('Article Liste')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(16, (index) {
            return Text("Article $index");
          }),
        ),
      ),
    );
  }
}

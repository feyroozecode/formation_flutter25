import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> elements = List.generate(1000, (i) => 'Article $i');

    return Scaffold(
      appBar: AppBar(title: Text('Article Liste')),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(elements[index]));
        },
      ),
    );
  }
}

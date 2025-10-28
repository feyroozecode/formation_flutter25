import 'package:flutter/material.dart';

class CompteurScreen extends StatefulWidget {
  const CompteurScreen({super.key});

  @override
  State<CompteurScreen> createState() => _CompteurScreenState();
}

class _CompteurScreenState extends State<CompteurScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Compteur: $_counter', style: TextStyle(fontSize: 24)),

        ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.add),
              SizedBox(width: 8),
              Text('Incrémenter', style: TextStyle(fontSize: 18)),
            ],
          ),
          onPressed: () => _incrementCounter(),
        ),
      ],
    );
  }
}

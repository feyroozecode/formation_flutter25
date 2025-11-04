import 'package:flutter/material.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key, required this.countScore});

  final int countScore;

  @override
  State<ScoreScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Actuellement ont est à ${widget.countScore}',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),

          ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.skip_previous),
                SizedBox(width: 8),
                Text('Retrourner a l\'accueil', style: TextStyle(fontSize: 18)),
              ],
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}

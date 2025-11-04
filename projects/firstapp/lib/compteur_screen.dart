import 'package:firstapp/about.dart';
import 'package:firstapp/grid_screen.dart';
import 'package:firstapp/list_screen.dart';
import 'package:firstapp/score_screen.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Compteur App"),
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => AboutScreen()));
            },
          ),
        ],
      ),
      body: Column(
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

          SizedBox(height: 20),

          ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add),
                SizedBox(width: 8),
                Text('Voir le Score Total', style: TextStyle(fontSize: 18)),
              ],
            ),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ScoreScreen(countScore: _counter),
              ),
            ),
          ),

          Text("Historiques des Scores"),
          SizedBox(
            height: 100,
            child: Expanded(
              child: ListView(
                children: [
                  ListTile(title: Text("Score N_1: 80")),
                  ListTile(title: Text("Score N_1: 80")),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          // Liste
          ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text(
                  'Voir la liste de tout les Score',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => ListScreen())),
          ),

          SizedBox(height: 15),
          ElevatedButton(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.list),
                SizedBox(width: 8),
                Text(
                  'Voir la GridList de tout les Score',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            onPressed: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => GridScreen())),
          ),
        ],
      ),
    );
  }
}

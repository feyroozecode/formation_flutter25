// classe prncpal pour tout les Widgets 
import 'package:flutter/material.dart';

import 'compteur_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Compteur de Score',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: Text('First App'),
          backgroundColor: Colors.green,
        ),
        body: CompteurScreen()
      )
    );
  }
}

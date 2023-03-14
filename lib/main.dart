import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AGNES MACHARIA'),
      ),
      body: Center(
        child: SelectionArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                    'Pragmatism is a philosophical tradition that considers words and thought as tools and instruments for prediction, problem solving, and action, and rejects the idea that the function of thought is to describe, represent, or mirror reality'),
              ]),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: ' Home'),
          NavigationDestination(icon: Icon(Icons.radio), label: ' Radio'),
          NavigationDestination(icon: Icon(Icons.message), label: 'Message')
        ],
      ),
    );
  }
}

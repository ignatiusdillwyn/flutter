//Template
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My Flutter App')),
        body: SafeArea(
          child: Builder(
            builder: (context) {
              return Column(
                
              );
            },
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
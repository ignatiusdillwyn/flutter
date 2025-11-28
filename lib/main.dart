import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => MyCounterState();
}

class MyCounterState extends State<MainApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter App'),
        ),
        body: SingleChildScrollView( // Membuat konten scrollable
          child: Column(
            children: [
              Text('Count: $count'),
              TextButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
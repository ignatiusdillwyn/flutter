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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.red,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!', textAlign: TextAlign.center),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.red,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.deepPurpleAccent,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!'),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.deepPurpleAccent,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.tealAccent,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!'),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        color: Colors.tealAccent,
                        margin: EdgeInsets.all(10),
                        child: Text('Hello, World!'),
                      ),
                    ],
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     print('Click!');
                  //   },
                  //   child: const Text('A button'),
                  // ),
                ],
              );
            },
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}

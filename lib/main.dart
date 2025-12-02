import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'secondPage.dart';

void main() {
  runApp(MyApp()); // MyApp mengandung MaterialApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(), // Home adalah MainApp
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int count = 0;
  List<dynamic> listNama = [];
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Count: $count'),
              TextButton(
                onPressed: () {
                  setState(() {
                    count++;
                    print(count);
                  });
                },
                child: Text('Increment'),
              ),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a name',
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    if (textController.text.isNotEmpty) {
                      listNama.add(textController.text);
                      textController.clear();
                    } else {
                      Fluttertoast.showToast(
                        msg: "Please Input Name",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                      );
                    }
                  });
                },
                child: Text('Add to List'),
              ),
              SizedBox(height: 20),
              Text('List of Names:'),
              for (int i = 0; i < listNama.length; i++)
                Text('${i + 1}. ${listNama[i]}'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigator bisa digunakan karena context sekarang berada dalam MaterialApp
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text('Go to Second Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
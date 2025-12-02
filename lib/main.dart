import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int count = 0;
  List<dynamic> listNama = []; // List untuk menyimpan nama
  TextEditingController textController =
      TextEditingController(); // Controller untuk TextField

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                  controller:
                      textController, // Hubungkan controller ke TextField
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter a name',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      if (textController.text.isNotEmpty) {
                        listNama.add(
                          textController.text,
                        ); // Tambahkan teks ke list
                        textController
                            .clear(); // Kosongkan TextField setelah menambahkan
                      } else {
                        print('INPUT NAME WOI');
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
                  Text('${i + 1}. ${listNama[i]}'), // Tampilkan dengan nomor
              ],
            ),
          ),
        ),
      ),
    );
  }
}

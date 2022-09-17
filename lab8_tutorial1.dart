import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.limeAccent,
              padding: const EdgeInsets.all(30.0),
              child: const Text('1'),
            ),
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(30.0),
            child: const Text('2'),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(30.0),
            child: const Text('3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.blue[600],
        child: const Text("click"),
      ),
    );
  }
}

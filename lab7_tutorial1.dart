import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
//home is property and after: is its value widget.
//scaffold is widgets built in flutter scaffold is one type of layout manager.
      home: Homescreen(),
    )
);

//making your own custom stateless widget...
//used in hot reload and also useful in reuse...DRY feature
class Homescreen extends StatelessWidget {
//const test1((key? key1)) super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter ... my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'hello ddu',
          style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'Aboreto'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //must required property..
//making change at here to test hot reloading...click --> click
// me ---> click and control +s
        backgroundColor: Colors.red[600],
        child: const Text('Click'),
      ),
    );
  }
}

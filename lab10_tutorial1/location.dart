import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
// const Loading({Key? key}) : super(key: key);
  @override
  State<Loading> createState() => _LoadingState();
}
class _LoadingState extends State<Loading> {
// void getData() async {
// String username = await Future.delayed(Duration(seconds: 4), () {
// return 'UNIVERSITY NAME : DDU';
// });
//
// String bio = await Future.delayed(Duration(seconds: 2), () {

// return 'DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR '
// 'COMPUTER ENGINEERING STUDY';
// });
//
// print('$username -> $bio');
//
//
// }
//
// @override
// void initState() {
// super.initState();
// print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
// print('before getdata call');
// getData();
// print('after getdata call');
// }
  void getData() async {
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    print(response.body); // it response in JSON form out put ...we need
    MAPformat..
// print(response.body.userId); // this will not work. because its not
    MAPformat..
// TO CONVERT JSON TO MAP..WE NEED TO IMPORT convert package....
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('LOADING SCREEN'),
    );
  }
}

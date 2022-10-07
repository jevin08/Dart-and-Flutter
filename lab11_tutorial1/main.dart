
import 'package:flutter/material.dart';
import 'package:lab11_tutorial1/loading.dart';
import 'package:lab11_tutorial1/home.dart';
import 'package:lab11_tutorial1/change_location.dart';

import 'package:lab11_tutorial1/world_time.dart';
void main() => runApp(MaterialApp(
// home: Home(),
// instead of making home: property to make any page to initialize at beginning...
// we can use following code ....
// initialRoute: '/home',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));

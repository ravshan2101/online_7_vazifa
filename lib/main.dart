import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_7_vazifa/Pages/UI2.dart';
import 'package:online_7_vazifa/Pages/intagram.dart';
import 'package:online_7_vazifa/UI3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          'UI2': (context) => UI2(),
          'UI3': (context) => UI3(),
          'Home': (context) => Instagram(),
        },
        initialRoute: 'Home');
  }
}

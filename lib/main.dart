import 'package:flutter/material.dart';
import 'package:flutter_dialog/alert.dart';
import 'package:flutter_dialog/custom.dart';
import 'package:flutter_dialog/simple_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
      //Custom()
      //AlertDemo()
      Simple()
    );
  }
}



import 'package:flutter/material.dart';
import 'lamp.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Lamp Deals',
      theme: ThemeData(),
      home: Lamp(),
    );
  }
}

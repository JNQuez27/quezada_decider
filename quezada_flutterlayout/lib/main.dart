import 'package:flutter/material.dart';
import 'package:quezada_flutterlayout/main.dart';
import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Decider',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: HomeView(),
    );
  }
}
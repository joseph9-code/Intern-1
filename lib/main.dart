import 'package:flutter/material.dart';
import 'Homepage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joseph 1st App',
      theme: ThemeData(
      
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Mzu Intern at Lailen'),
    );
  }
}


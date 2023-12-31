import 'package:flutter/material.dart';

import './screens/home/screens/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remember It',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              const TextTheme(bodyMedium: TextStyle(fontFamily: 'Poppins'))),
      home: const HomeScreen(),
    );
  }
}

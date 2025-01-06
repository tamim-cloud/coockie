import 'package:coockie/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CoockieApp extends StatelessWidget {
  const CoockieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen(),
    );
  }
}

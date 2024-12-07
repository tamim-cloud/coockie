// import 'package:coockie/screens.dart/coockie_app_screen.dart';
import 'package:coockie/screens.dart/coockie_app_screen.dart';
import 'package:flutter/material.dart';

class CoockieApp extends StatelessWidget {
  const CoockieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.white],
              ),
            ),
          ),
          title: Text(
            "Coockie App",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 40,
          shadowColor: Colors.tealAccent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(34))),
          elevation: 6,
          // shadowColor: Colors.black,
        ),
        body: SafeArea(
          child: CoockieAppScreen(),
        ),
      ),
    );
  }
}

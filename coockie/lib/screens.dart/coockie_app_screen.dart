import 'package:coockie/data/coockie_data.dart';
import 'package:flutter/material.dart';

class CoockieAppScreen extends StatefulWidget {
  const CoockieAppScreen({super.key});

  @override
  State<CoockieAppScreen> createState() => _CoockieAppScreenState();
}

class _CoockieAppScreenState extends State<CoockieAppScreen> {
  var currentScreen=0;

  changeName() { 
    setState(() {
    if(currentScreen<coockieModelList.length){
      currentScreen++;
    }
    if(currentScreen==coockieModelList.length){
      currentScreen=0;
    }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink, Colors.green],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            coockieModelList[currentScreen].message,
            style: const TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.lightGreenAccent,
            ),
          ),
          SizedBox(
            height: 34,
          ),
          ElevatedButton(
            onPressed: changeName,
            child: Text(
              "Click here",
              style: const TextStyle(
                fontSize: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

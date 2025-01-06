import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> fortuneData=[
    "You are a good person",
    "Today you will learn something special",
    "Tomorrow will bring you happiness",
    "You will achieve your goals",
  ];

  String?currentData;
  int i=0;

  void showNextFortune() {
    setState(() {
      if(i<fortuneData.length){
        currentData=fortuneData[i];
        i++;
      }else{
        currentData=null;
        i=0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fortune Cookie App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 211, 108, 39),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45,
            ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Text( 
                  currentData?? "Click the icon to know your fortune!",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
              ),
            SizedBox(height: 35),
            TextButton(
              onPressed: showNextFortune,
              child: Image.asset(
                "assets/images/coockie.png",
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

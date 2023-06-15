import 'package:flutter/material.dart';
import 'package:todo/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var indexToDisplay = 0;
  var questions  = ["Whats your name?", "How are you"];

  void  pressed(){
    setState(() {
      indexToDisplay++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(),
        body: Column(children: [
          Text(questions[indexToDisplay]),
          ElevatedButton(onPressed: pressed, child: const Text("Press Me"))
        ]),
      ),
    );
  }
}

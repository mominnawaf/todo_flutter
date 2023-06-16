import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/app_bar.dart';
import 'package:todo/search_box.dart';
import 'package:todo/constants/constants.dart';
import 'package:todo/todo_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: tdBGColor,
        appBar: const MyAppBar(),
        body: Column(children: [
          Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const SearchBox()),
          Expanded(
              child: ListView(
            children: const [
              Text(
                "All Task",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              TodoItem(),
              TodoItem(),
              TodoItem(),
               TodoItem(),
              TodoItem(),
              TodoItem(),
               TodoItem(),
              TodoItem(),
              TodoItem(),
            ],
          ))
        ]),
      ),
    );
  }
}

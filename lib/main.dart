import 'package:flutter/material.dart';
import 'input.dart';
import 'constants.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _myAppState();
}

// ignore: camel_case_types
class _myAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        
      ),
      home: InputPage(),
    );
  }
}
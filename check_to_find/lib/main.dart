import 'package:check_to_find/pages/home/home.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_modular/flutter_modular.dart';
// ignore: unused_import
import 'dart:ui' if (dart.library.io) 'dart:io';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Check2Find',
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Scaffold
    );
  }
}
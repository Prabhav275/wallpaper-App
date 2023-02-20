import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/screens/category.dart';
import 'package:wallpaper_app/views/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WALLPAPER HUB',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:HomeScreen(),
    );
  }
}


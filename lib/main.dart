import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Picture Downloader',
      home: HomeScreen(),
    );
  }
}

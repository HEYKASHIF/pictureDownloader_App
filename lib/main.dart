import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Screens/Category.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Picture Downloader',
      home: CategoryScreen(),
    );
  }
}

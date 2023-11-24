import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Widgets/CustomAppBar.dart';
import 'package:pictute_downloader/View/Widgets/SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: CustomAppBarWidget(),
      ),
      body: Column(
        children: const <Widget>[
          SearchBarScreen(),
        ],
      ),
    );
  }
}

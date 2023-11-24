import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Widgets/CatBlock.dart';
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
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SearchBarScreen()),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 30,
                itemBuilder: ((context, index) => CatBlockWidget())),
          )
        ],
      ),
    );
  }
}

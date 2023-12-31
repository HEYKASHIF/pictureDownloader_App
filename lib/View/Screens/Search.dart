import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Widgets/custom_appbar.dart';
import 'package:pictute_downloader/View/Widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const CustomAppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const SearchBarWidget()),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 7),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 410,
                  mainAxisSpacing: 10,
                ),
                itemCount: 16,
                itemBuilder: ((context, index) => Container(
                    height: 500,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          height: 500,
                          width: 50,
                          fit: BoxFit.cover,
                          "https://images.pexels.com/photos/19010668/pexels-photo-19010668/free-photo-of-book-rowan-and-tea-on-picnic-blanket.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
    
  }
}

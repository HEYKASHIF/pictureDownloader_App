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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: SearchBarWidget()),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 30,
                    itemBuilder: ((context, index) => CatBlockWidget())),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7),
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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

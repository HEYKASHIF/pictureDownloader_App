import 'package:flutter/material.dart';
import 'package:pictute_downloader/View/Widgets/custom_appbar.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
            Stack(
              children: [
                Image.network(
                    height: 150,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    "https://images.pexels.com/photos/10736687/pexels-photo-10736687.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load"),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black38,
                ),
                const Positioned(
                  left: 130,
                  top: 30,
                  child: Column(
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "Mountains",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
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

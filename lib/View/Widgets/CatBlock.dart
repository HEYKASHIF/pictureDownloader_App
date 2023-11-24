import 'package:flutter/material.dart';

class CatBlockWidget extends StatelessWidget {
  const CatBlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          "https://images.pexels.com/photos/18435633/pexels-photo-18435633/free-photo-of-black-and-white-photo-of-young-woman-posing-in-elegant-blazer-headscarf-and-fedora-hat.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    );
  }
}

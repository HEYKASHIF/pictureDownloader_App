import 'package:flutter/material.dart';

class CatBlockWidget extends StatelessWidget {
  const CatBlockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
                height: 100,
                width: 150,
                // fit: BoxFit.cover,
                "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
          ),
          Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          const Positioned(
            left: 30,
            top: 25,
            child: Text(
              "House",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}

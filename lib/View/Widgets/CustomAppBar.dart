import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "Picture",
                style: TextStyle(color: Colors.red, fontSize: 30)),
            TextSpan(
                text: "Downloader",
                style: TextStyle(color: Colors.blueGrey, fontSize: 20))
          ])),
    );
  }
}

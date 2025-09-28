import 'package:flutter/material.dart';

class MyFood extends StatelessWidget {
  final String title;
  final String image;
  const MyFood({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          //image
          Image(image: AssetImage(image)),

          //text
          Text(title, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}

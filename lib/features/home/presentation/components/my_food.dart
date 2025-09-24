import 'package:flutter/cupertino.dart';

class MyFood extends StatelessWidget {
  final String title;
  final String image;
  const MyFood({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          //image
          Image(image: AssetImage(image)),

          //text
          Text(title, style: TextStyle(color: Color(0xff4F4F4F), fontSize: 10),),
        ],
      ),
    );
  }
}

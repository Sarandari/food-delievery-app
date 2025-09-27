import 'package:flutter/material.dart';

class MyDetailText extends StatelessWidget {
  final String txt;
  final String myImage;
  const MyDetailText({super.key, required this.txt, required this.myImage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(image: AssetImage(myImage)),
        SizedBox(width: 8),
        Text(
          txt,
          style: TextStyle(
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

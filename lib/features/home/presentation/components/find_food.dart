import 'package:flutter/cupertino.dart';

import 'my_food.dart';

class FindFood extends StatelessWidget {
  const FindFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //text
        Text('Find your Delicoious Food',
          style: TextStyle(
            color: Color(0xff4F4F4F),
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 18),
        //option
        Row(
          children: [
            MyFood(title: 'Fast Food', image: 'assets/images/food-type-1.png',),
            MyFood(title: 'Italian', image: 'assets/images/food-type-2.png',),
            MyFood(title: 'Japanese', image: 'assets/images/food-type-3.png',),
            MyFood(title: 'Sea Food', image: 'assets/images/food-type-4.png',),
          ],
        )
      ],
    );
  }
}

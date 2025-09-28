import 'package:flutter/material.dart';
import 'my_food.dart';

class FindFood extends StatelessWidget {
  const FindFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //text
          Text('Find your Delicoious Food',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 18),
          //option
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyFood(title: 'Fast Food', image: 'assets/images/food-type-1.png',),
              MyFood(title: 'Italian', image: 'assets/images/food-type-2.png',),
              MyFood(title: 'Japanese', image: 'assets/images/food-type-3.png',),
              MyFood(title: 'Sea Food', image: 'assets/images/food-type-4.png',),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:food_delievery_app/features/home/presentation/components/food_card.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //Popular food card
          FoodCard(title: 'Meeting cheese', image: 'assets/images/pizza-1.png', calories: 44, price: 9.47),
          FoodCard(title: 'Pizza Capricciosa', image: 'assets/images/pizza-2.png', calories: 54, price: 12.55),
        ],
      ),
    );
  }
}

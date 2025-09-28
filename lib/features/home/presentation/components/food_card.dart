import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/items/presentation/page/Items_page.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final int calories;
  final String image;
  final double price;
  final List<Map<String, dynamic>> foodOption;
  const FoodCard({super.key, required this.title, required this.image, required this.calories, required this.price, required this.foodOption});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
            ItemsPage(
              title: title,
              calories: calories,
              image: image,
              price: price,
              foodOption: foodOption,
            )));
      },
      child: Container(
        width: 160,
        margin: EdgeInsets.only(right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.grey.shade200,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff00000033),
              blurRadius: 4,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            //title
            Text(title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 8),
            //calories
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/calories-emoji.png')),
                Text('${calories.toString()} calories',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.redAccent),
                ),
              ],
            ),
            SizedBox(height: 12),
            //image
            Image(image: AssetImage(image)),
            SizedBox(height: 8),
            //price
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "\$",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  TextSpan(
                    text: '${price.toString()}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
      
            SizedBox(height: 8),
            //add button
            Container(
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.rectangle,
                boxShadow: [BoxShadow(
                  color: Color(0xff00000033),
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                ),]
              ),
              child: Icon(Icons.add, color: Theme.of(context).colorScheme.background, size: 19),
            ),
          ],
        ),
      ),
    );
  }
}

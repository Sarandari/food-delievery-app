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
        decoration: BoxDecoration(
          color: Colors.white,
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
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            //calories
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/calories-emoji.png')),
                Text('${calories.toString()} calories',
                  style: TextStyle(
                    color: Color(0xffEB5757),
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
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
                    style: const TextStyle(
                      color: Colors.redAccent, // $ тэмдэгийн өнгө
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                  TextSpan(
                    text: '${price.toString()}',
                    style: const TextStyle(
                      color: Color(0xff4F4F4F), // үнэ (тооны) өнгө
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
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
              child: const Icon(Icons.add, color: Colors.white, size: 18),
            ),
          ],
        ),
      ),
    );
  }
}

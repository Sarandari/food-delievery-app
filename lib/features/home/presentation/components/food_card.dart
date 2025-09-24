import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final int calories;
  final String image;
  final double price;
  const FoodCard({super.key, required this.title, required this.image, required this.calories, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          //title
          Text(title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),

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
          //image
          Image(image: AssetImage(image)),

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
    );
  }
}

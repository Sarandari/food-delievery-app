import 'package:flutter/material.dart';

import '../components/inchCard.dart';
import '../components/my_detail_text.dart';


class ItemsPage extends StatefulWidget {
  final String title;
  final int calories;
  final String image;
  final double price;
  final List<Map<String, dynamic>> foodOption;
  const ItemsPage({super.key, required this.title, required this.calories, required this. image, required this.price, required this.foodOption});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  int countDelivery = 1;

  int selectedFoodOptionIndex = 1;
  late double selectedPrice;

  @override
  void initState() {
    super.initState();
    selectedFoodOptionIndex = widget.foodOption.indexWhere((size) => size["price"] == widget.price);
    if (selectedFoodOptionIndex == -1) selectedFoodOptionIndex = 0;
    selectedPrice = widget.foodOption[selectedFoodOptionIndex]["price"];
  }

  double get totalPrice => selectedPrice * countDelivery;

  // double calculateAge() {
  //   return 45;
  // }
  //
  // double get getAge => 54;
  void increaseCount() {
    setState(() {
      countDelivery++;
    });
  }

  void decreaseCount(){
    setState(() {
      if(countDelivery > 1){
        countDelivery--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),

      body: Column(
        children: [
          //text
          Text('Meeting Cheese',
            style: TextStyle(color: Color(0xff4F4F4F), fontSize: 21),
          ),
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
                  text: '${widget.price.toString()}',
                  style: const TextStyle(
                    color: Color(0xff4F4F4F), // үнэ (тооны) өнгө
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ]
            ),

          ),

          //image
          Image(image: AssetImage(widget.image)),

          //count
          Row(
            children: [
              GestureDetector(
                onTap: decreaseCount,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.rectangle,
                      boxShadow: [BoxShadow(
                        color: Color(0xff00000033),
                        blurRadius: 4,
                        offset: const Offset(0, 0),
                      ),]
                  ),
                  child: const Icon(Icons.remove, color: Colors.white, size: 18),
                ),
              ),
              Text(countDelivery.toString()),
              GestureDetector(
                onTap: increaseCount,
                child: Container(
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
              ),
            ],
          ),

          //price
          Text('\$${totalPrice.toStringAsFixed(2)}'),

          //inch
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(widget.foodOption.length, (index) {
              return InchCard(
                inch: widget.foodOption[index]["inch"],
                price: widget.foodOption[index]["price"],
                isSelected: selectedFoodOptionIndex == index,
                onSelected: (price) {
                  setState(() {
                    selectedFoodOptionIndex = index;
                    selectedPrice = price; // ✅ сонгосон үнийг шинэчилнэ
                  });
                },
              );
            }),
          ),
          SizedBox(height: 30),
          //rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyDetailText(txt: '4.9', myImage: 'assets/images/star.png'),
              MyDetailText(txt: 'Caloriees', myImage: 'assets/images/emoji-2.png'),
              MyDetailText(txt: '20-30 min', myImage: 'assets/images/time.png'),
            ],
          ),

          //foot
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../components/image_Size_test.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
            style: TextStyle(
                color: Color(0xff4F4F4F),
                fontSize: 21,
            ),
          ),
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
          SizedBox(height: 8),
          //image
          Image(
            image: AssetImage(widget.image),
            width: 270,
            height: 270,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          //count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: decreaseCount,
                child: Container(
                  margin: EdgeInsets.all(8),
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
              SizedBox(width: 8),
              Text(countDelivery.toString()),
              SizedBox(width: 8),
              GestureDetector(
                onTap: increaseCount,
                child: Container(
                  margin: EdgeInsets.all(8),
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
          SizedBox(height: 8),
          //price
          Text('\$${totalPrice.toStringAsFixed(2)}'),
          SizedBox(height: 90),
          //inch
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(widget.foodOption.length, (index) {
                return InchCard(
                  inch: widget.foodOption[index]["inch"],
                  price: widget.foodOption[index]["price"],
                  isSelected: selectedFoodOptionIndex == index,
                  onSelected: (price) {
                    setState(() {
                      selectedFoodOptionIndex = index;
                      selectedPrice = price;
                    });
                  },
                );
              }),
            ),
          ),
          SizedBox(height: 30),
          //rating
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyDetailText(txt: '4.9', myImage: 'assets/images/star.png'),
                MyDetailText(txt: '${widget.calories} Caloriees', myImage: 'assets/images/emoji-2.png'),
                MyDetailText(txt: '20-30 min', myImage: 'assets/images/time.png'),
              ],
            ),
          ),
          SizedBox(height: 30),
          //foot
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 14),
            ),
            child: const Text(
              "ADD TO CARD",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

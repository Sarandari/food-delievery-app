import 'package:flutter/material.dart';

import '../components/inchCard.dart';


class ItemsPage extends StatefulWidget {
  final String title;
  final int calories;
  final String image;
  final double price;
  const ItemsPage({super.key, required this.title, required this.calories, required this. image, required this.price});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  int countDelivery = 1;

  int selectedSizeIndex = 1;
  late double selectedPrice;

  @override
  void initState() {
    super.initState();
    selectedSizeIndex = sizes.indexWhere((size) => size["price"] == widget.price);
    if (selectedSizeIndex == -1) selectedSizeIndex = 0;
    selectedPrice = sizes[selectedSizeIndex]["price"];
  }

  List<Map<String, dynamic>> sizes = [
    {"inch": 8, "price": 6.44},
    {"inch": 12, "price": 9.47},
    {"inch": 16, "price": 15.32},
  ];

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
            children: List.generate(sizes.length, (index) {
              return InchCard(
                inch: sizes[index]["inch"],
                price: sizes[index]["price"],
                isSelected: selectedSizeIndex == index,
                onSelected: (price) {
                  setState(() {
                    selectedSizeIndex = index;
                    selectedPrice = price; // ✅ сонгосон үнийг шинэчилнэ
                  });
                },
              );
            }),
          ),

          //rating

          //foot
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/home/presentation/components/my_drawer.dart';
import 'package:food_delievery_app/features/home/presentation/components/popular_food.dart';

import '../components/find_food.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        drawer: MyDrawer(),
        body: Container(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                //name
                Text('Hi Alex',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),

                //first section find food
                FindFood(),

                SizedBox(height: 70,),

                //second section

                Text('Popular', style: TextStyle(color: Color(0xff4F4F4F), fontWeight: FontWeight.bold, fontSize: 21,),),
                PopularFood(),

                //food section
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
      // color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        drawer: MyDrawer(),
        body: Container(
          // color: Colors.white,
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
                SizedBox(height: 30),
                //food section
                Center(
                  child: Container(
                    width: 78,
                    height: 78,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff0000004D),
                            blurRadius: 18,
                            offset: const Offset(0, 7),
                          ),
                        ],
                    ),
                    child: Center(
                      child: Text('Menu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

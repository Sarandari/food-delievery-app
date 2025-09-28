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
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          ],
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.085),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: width * 0.08),

              //name
              Text('Hi Alex',
                style: Theme.of(context).textTheme.headlineLarge,
              ),

              //first section find food
              FindFood(),
              SizedBox(height: height * 0.08,),

              //second section
              Text('Popular',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 30),
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
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

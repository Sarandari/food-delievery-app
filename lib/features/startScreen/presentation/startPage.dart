import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/home/presentation/pages/homePage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Stack(
            children: [
              // Дээд зураг
              Container(
                height: 595,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/delivery-man-2.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Доод card
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.all(35),
                  padding: const EdgeInsets.all(37),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: 'Quick Delivery at your',
                          style: TextStyle(
                            fontSize: 31,
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 31,
                                color: Colors.redAccent,
                              ),
                              text: ' Doorstep',
                            ),],
                        ),

                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Home delivery and online reservation system for restaurants and cafe",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffBDBDBD),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Homepage()
                              )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 14),
                        ),
                        child: const Text(
                          "Get Started",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ],
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

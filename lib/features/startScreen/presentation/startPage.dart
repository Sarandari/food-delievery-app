import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/home/presentation/pages/homePage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // дэлгэцийн хэмжээ
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    print('height: $height width: $width');

    //width * 0.01 = 400 * 0.01 = 4 px
    print(width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: SafeArea(
          child: Stack(
            children: [
              // Дээд зураг
              Container(
                height: height * 0.65,
                width: double.infinity,
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
                  margin: EdgeInsets.all(width * 0.08), // дэлгэцийн өргөний 8%
                  padding: EdgeInsets.all(width * 0.09), // дэлгэцийн өргөний 9%
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
                            fontSize: width * 0.08,
                            color: Color(0xff4F4F4F),
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.08,
                                color: Colors.redAccent,
                              ),
                              text: ' Doorstep',
                            ),],
                        ),

                      ),
                      SizedBox(height: height * 0.01),
                      const Text(
                        "Home delivery and online reservation system for restaurants and cafe",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xffBDBDBD),
                        ),
                      ),
                      SizedBox(height: height * 0.01),
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
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.1,
                            vertical: height * 0.02,
                          ),
                        ),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              fontSize: width * 0.06,
                              color: Colors.white
                          ),
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

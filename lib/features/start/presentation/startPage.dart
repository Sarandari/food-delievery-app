import 'package:flutter/material.dart';
import 'package:food_delievery_app/features/home/presentation/pages/homePage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // display size
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    print('height: $height width: $width');

    //width * 0.01 = 400 * 0.01 = 4 px
    print(width);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SafeArea(
          child: Stack(
            children: [
              // Image man
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

              // bottom card
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(width * 0.08),
                  padding: EdgeInsets.all(width * 0.09),

                  //box
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
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
                      //text
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: 'Quick Delivery at your',
                          style: Theme.of(context).textTheme.displaySmall,
                          children: [
                            TextSpan(
                              style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Theme.of(context).colorScheme.primary),
                              text: ' Doorstep',
                            ),],
                        ),

                      ),
                      SizedBox(height: height * 0.01),

                      //text
                       Text(
                        "Home delivery and online reservation system for restaurants and cafe",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: height * 0.01),

                      //Get started button
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Homepage()
                              )
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
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
                          style: Theme.of(context).textTheme.labelLarge,
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

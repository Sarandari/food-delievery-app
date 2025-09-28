import 'package:flutter/material.dart';
import 'package:food_delievery_app/themes/light_mode.dart';

import 'features/start/presentation/startPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: StartPage(),
    );
  }
}

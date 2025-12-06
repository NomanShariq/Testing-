import 'package:flutter/material.dart';
import 'package:flutter_pro1/screeens/details_screen.dart';
import 'package:flutter_pro1/screeens/home_screen.dart';
import 'package:flutter_pro1/screeens/profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intermediate Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
      routes: {
        '/details': (context) => DetailsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

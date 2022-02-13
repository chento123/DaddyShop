import 'package:flutter/material.dart';
import 'package:flutter_application_3/Card.dart';

import 'Home.dart';
import 'profile.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentlyIndex=0;
  final ScreenIndex=[Home(),Card_Shop(),Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenIndex[CurrentlyIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              CurrentlyIndex = value;
            });
          },
          currentIndex: CurrentlyIndex,
          selectedItemColor: Colors.yellow,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
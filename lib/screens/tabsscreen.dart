import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/screens/Info.dart';
import 'package:mealapp/screens/categories_screen.dart';
import 'package:mealapp/screens/favouritescreen.dart';

class Tabscreen extends StatefulWidget {
  @override
  _TabscreenState createState() => _TabscreenState();
}

class _TabscreenState extends State<Tabscreen> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int selectedpageIndex = 0;

  List<Widget> screens = [
    CategoriesScreens(),
    Favourtiescreen(),
    Info(),
  ];

  @override
  /*void initState() {
    _pages = [
      {
        'pages': CategoriesScreens(),
        'title': 'Categories',
      },
      {
        'pages': Favourtiescreen(),
        'title': 'Favourite',
      },
      {
        'pages': Info(),
        'title': 'Info',
      },
    ];
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedpageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.deepOrangeAccent,
        backgroundColor: Colors.white.withOpacity(0.9),
        buttonBackgroundColor: Colors.deepOrangeAccent,
        index: selectedpageIndex,
        height: 70,

        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.category_sharp, size: 30),
          Icon(Icons.favorite_border, size: 30),
          Icon(
            Icons.info_outline_rounded,
            size: 30,
            //color: Colors.deepOrangeAccent,
          ),
        ],
        //  animationDuration: Duration(milliseconds: 100, ),
        animationCurve: Curves.decelerate,
        onTap: (int value) {
          setState(() {
            selectedpageIndex = value;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/cards.dart';
import 'widgets/cuvedshape.dart';
import 'widgets/maindrawer.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 55.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.deepOrangeAccent,
        shape: Cuvedshape(50.0),
        // borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(30), top: Radius.circular(0))),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Resturant",
            style: TextStyle(
              letterSpacing: 1.5,
              color: Colors.black,
              fontSize: 45,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 270,
                width: 300,
                child: Image.asset("assets/m2.jpg", fit: BoxFit.cover),
              ),
            ),
            card1(),
            card2(),
          ],
        ),
      ),
      drawerScrimColor: Colors.white.withOpacity(0.7),
      drawer: MainDrawer(),
    );
  }
}

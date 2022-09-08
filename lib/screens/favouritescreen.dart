import 'package:flutter/material.dart';
import 'package:mealapp/widgets/cuvedshape.dart';
import 'package:mealapp/widgets/maindrawer.dart';
import 'package:mealapp/widgets/mealitem.dart';
import 'package:mealapp/information.dart';

class Favourtiescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 55.0,
          backgroundColor: Colors.deepOrangeAccent,
          shape: Cuvedshape(30.0),
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Favourite List",
              style: TextStyle(
                letterSpacing: .5,
                color: Colors.black,
                fontSize: 35,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: ListView.builder(
          padding: EdgeInsets.only(top: 50),
          itemBuilder: (ctx, index) {
            return mealitem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              duration: favoriteMeals[index].duration,
              complexity: favoriteMeals[index].complexity,
              imageUrl: favoriteMeals[index].imageUrl,
              affordability: favoriteMeals[index].affordability,
            );
          },
          itemCount: favoriteMeals.length,
        ),
        drawer: MainDrawer(),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 55.0,
          backgroundColor: Colors.deepOrangeAccent,
          shape: Cuvedshape(30.0),
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Favourite List",
              style: TextStyle(
                letterSpacing: .5,
                color: Colors.black,
                fontSize: 35,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Text(
            "  You Have No Favourite Meal Yet..!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        drawer: MainDrawer(),
      );
    }
  }
}

   /* if (favoriteMeals.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          "You Have No Favourite Yet ..Start Adding Some Now",
          style: TextStyle(
            letterSpacing: .5,
            color: Colors.black,
            fontSize: 23,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return ListView.builder(
        padding: EdgeInsets.only(top: 50),
        itemBuilder: (ctx, index) {
          return mealitem(
            id: favoriteMeals[index].id,
            imageUrl: favoriteMeals[index].imageUrl,
            title: favoriteMeals[index].title,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            affordability: favoriteMeals[index].affordability,
            // removeitem: _removemeal,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}*/

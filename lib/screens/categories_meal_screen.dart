import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/cuvedshape.dart';
import 'package:mealapp/widgets/mealitem.dart';
import 'package:mealapp/information.dart';

// ignore: camel_case_types
List<Meal> selectedMeals = [];
void selectmeals(id) {
  selectedMeals.clear();
  for (int i = 0; i < availableMeals.length; i++) {
    if (availableMeals[i].categories.contains(id)) {
      selectedMeals.add(availableMeals[i]);
    }
  }
}

class MealsScreen extends StatefulWidget {
  static const routename = 'meal_details';
  final String title;
  final String id;
  MealsScreen({@required this.id, @required this.title});

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  void removeMeal(String mealId) {
    setState(() {
      availableMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.withOpacity(0.1),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        elevation: 55.0,
        backgroundColor: Colors.deepOrangeAccent,
        shape: Cuvedshape(30.0),
        //borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(30), top: Radius.circular(0))),
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            widget.title,
            style: TextStyle(
              letterSpacing: .5,
              color: Colors.black,
              fontSize: 27,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 40),
        itemBuilder: (ctx, index) {
          return mealitem(
            id: selectedMeals[index].id,
            title: selectedMeals[index].title,
            duration: selectedMeals[index].duration,
            complexity: selectedMeals[index].complexity,
            imageUrl: selectedMeals[index].imageUrl,
            affordability: selectedMeals[index].affordability,
          );
        },
        itemCount: selectedMeals.length,
      ),
    );
  }
}

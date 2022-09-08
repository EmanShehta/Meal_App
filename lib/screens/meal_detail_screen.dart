import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/widgets/cuvedshape.dart';
import 'package:mealapp/information.dart';

// ignore: non_constant_identifier_names
Meal Selectedmeal;

// ignore: camel_case_types
class mealdetail extends StatefulWidget {
  static const routename = 'meal_details';
  // ignore: non_constant_identifier_names

  @override
  _mealdetailState createState() => _mealdetailState();
}

// ignore: camel_case_types
class _mealdetailState extends State<mealdetail> {
  // ignore: non_constant_identifier_names
  Widget build_selection_title(BuildContext ctx, String text) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Text(
        text,
        style: TextStyle(
          letterSpacing: .5,
          color: Colors.black,
          fontSize: 31,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget build_Container(Widget child) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.lightGreen,
        gradient: LinearGradient(
          colors: [Colors.white38, Colors.grey],
        ),
        border: Border.all(color: Colors.black, width: 3),
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: 320,
      height: 200,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    // final meal_id = ModalRoute.of(context).settings.arguments as String;
    // ignore: non_constant_identifier_names
    // final selected_meal = DUMMY_MEALS.firstWhere((meal) => meal.id == meal_id);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        elevation: 35.0,
        backgroundColor: Colors.deepOrangeAccent,
        shape: Cuvedshape(30.0),
        //borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(30), top: Radius.circular(0))),
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            Selectedmeal.title,
            style: TextStyle(
              letterSpacing: .5,
              color: Colors.black,
              fontSize: 21,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(15),
              // width: double.infinity,
              // height: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                child: Image.network(
                  Selectedmeal.imageUrl,
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            build_selection_title(context, "Ingredients"),
            build_Container(
              ListView.builder(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Colors.deepOrangeAccent,
                    // shape: CircleBorder(side: BorderSide.canMerge(12, true)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.5, horizontal: 5),
                      child: Text(
                        Selectedmeal.ingredients[index],
                        style: TextStyle(
                          letterSpacing: .2,
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: Selectedmeal.ingredients.length,
              ),
            ),
            build_selection_title(context, "Steps"),
            build_Container(
              ListView.builder(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        child: Text("#${index + 1}"),
                      ),
                      title: Text(Selectedmeal.steps[index]),
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.black87,
                    ),
                  ],
                ),
                itemCount: Selectedmeal.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            toggleFavorite(Selectedmeal.id);
          });
        },
        child: Icon(
          isMealFavorite(Selectedmeal.id)
              ? Icons.favorite
              : Icons.favorite_border,
          color: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}

selectmeal(String mealId) {
  for (int i = 0; i < DUMMY_MEALS.length; i++) {
    if (DUMMY_MEALS[i].id == mealId) {
      Selectedmeal = DUMMY_MEALS[i];
      break;
    }
  }
}

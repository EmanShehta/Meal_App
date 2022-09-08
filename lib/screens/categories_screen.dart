import 'package:flutter/material.dart';
import 'package:mealapp/dummy_data.dart';
import 'package:mealapp/widgets/category_item.dart';
import 'package:mealapp/widgets/cuvedshape.dart';

class CategoriesScreens extends StatefulWidget {
  static const routename = 'category_meals';

  @override
  _CategoriesScreensState createState() => _CategoriesScreensState();
}
// ignore: camel_case_types
class _CategoriesScreensState extends State<CategoriesScreens> {
  // ignore: unused_field
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          elevation: 55.0,
          backgroundColor: Colors.deepOrangeAccent,
          shape: Cuvedshape(30.0),
          title: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Categories",
              style: TextStyle(
                letterSpacing: .5,
                color: Colors.black,
                fontSize: 31,
                //fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: GridView(
            children: DUMMY_CATEGORIES
                .map(
                  // ignore: non_constant_identifier_names
                  (CateData) =>
                      Categoryitem(CateData.id, CateData.title, CateData.color),
                )
                .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.13,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
      ),
    );
  }
}

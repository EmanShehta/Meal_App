import 'package:flutter/material.dart';
import 'package:mealapp/information.dart';
import 'package:mealapp/widgets/cuvedshape.dart';
import 'package:mealapp/widgets/maindrawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool glutenFree = false;
  bool lactoseFree = false;
  bool vegan = false;
  bool vegetarian = false;

  @override
  void initState() {
    glutenFree = filters['gluten'];
    lactoseFree = filters['lactose'];
    vegan = filters['vegan'];
    vegetarian = filters['vegetarian'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),*/
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        elevation: 55.0,
        backgroundColor: Colors.deepOrangeAccent,
        shape: Cuvedshape(30.0),
        //borderRadius: BorderRadius.vertical(
        //   bottom: Radius.circular(30), top: Radius.circular(0))),
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Filters",
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 60),
            child: Text(
              "Adjust Your Meal Selection",
              style: TextStyle(
                letterSpacing: .5,
                color: Colors.black,
                fontSize: 25,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  activeColor: Colors.deepOrangeAccent,
                  title: Text(
                    'Gluten-free',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  value: glutenFree,
                  subtitle: Text('Only include gluten-free meals.'),
                  onChanged: (newValue) {
                    setState(() {
                      glutenFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: Colors.deepOrangeAccent,
                  title: Text(
                    'Lactose-free',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  value: lactoseFree,
                  subtitle: Text('Only include lactose-free meals.'),
                  onChanged: (newValue) {
                    setState(() {
                      lactoseFree = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: Colors.deepOrangeAccent,
                  title: Text(
                    'Vegan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  value: vegan,
                  subtitle: Text('Only include vegan meals.'),
                  onChanged: (newValue) {
                    setState(() {
                      vegan = newValue;
                    });
                  },
                ),
                SwitchListTile(
                  activeColor: Colors.deepOrangeAccent,
                  title: Text(
                    'Vegetarian',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  value: vegetarian,
                  subtitle: Text('Only include vegetarian meals.'),
                  onChanged: (newValue) {
                    setState(() {
                      vegetarian = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          setState(() {
            final selectedfilters = {
              'gluten': glutenFree,
              'lactose': lactoseFree,
              'vegan': vegan,
              'vegetarian': vegetarian,
            };
            setFiltes(selectedfilters);
          });
        },
        child: Icon(
          Icons.swap_vert_circle,
        ),
      ),
    );
  }
}

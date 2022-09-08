import 'package:flutter/material.dart';
import 'package:mealapp/screens/filters.dart';
import 'package:mealapp/screens/tabsscreen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(
      String title, IconData icon, BuildContext context, Object screen) {
    return ListTile(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => screen));
      },
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Colors.deepOrangeAccent,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                letterSpacing: .5,
                color: Colors.black,
                fontSize: 30,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meal', Icons.restaurant, context, Tabscreen()),
          SizedBox(
            height: 20,
          ),
          buildListTile('Filters', Icons.settings, context, FilterScreen()),
          SizedBox(
            height: 20,
          ),
          buildListTile('Log Out', Icons.logout, context, Tabscreen()),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

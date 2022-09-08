import 'package:flutter/material.dart';
import 'package:mealapp/screens/categories_meal_screen.dart';

class Categoryitem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const Categoryitem(
    this.id,
    this.title,
    this.color,
  );
  void selectcategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealsScreen.routename, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectmeals(id);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MealsScreen(id: id, title: title),
          ),
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(17),
        child: Text(
          title,
          // ignore: deprecated_member_use
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.4),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import 'package:mealapp/screens/meal_detail_screen.dart';

// ignore: camel_case_types
class mealitem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String id;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const mealitem({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
  });

  // ignore: non_constant_identifier_names
  String get Complexitytext {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'UnKown';
        break;
    }
  }

  String get affordabilitytext {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'UnKown';
        break;
    }
  }

  void selectedmeal(BuildContext ctx) {
    Navigator.pushNamed(ctx, mealdetail.routename, arguments: id)
        .then((result) {
      //  if (result != null) removeitem(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectmeal(id);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => mealdetail(),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 15,
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 260,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 200,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.schedule),
                    SizedBox(
                      width: 6,
                    ),
                    Text("$duration Min")
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.work),
                    SizedBox(
                      width: 6,
                    ),
                    Text("$Complexitytext"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money_outlined),
                    SizedBox(
                      width: 6,
                    ),
                    Text("$affordabilitytext ")
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mealapp/screens/tabsscreen.dart';

// ignore: camel_case_types
class card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset("assets/dish1.jpg", fit: BoxFit.cover),
              //flex: 2,
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Dishes We Have",
                      style: TextStyle(
                          //color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(" In Our Restaurant"),
                  ),
                  Expanded(
                    // flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tabscreen()));
                          },
                          icon: Icon(
                            Icons.food_bank,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Go",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // flex: 8,
          ],
        ),
      ),
      elevation: 6,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      shadowColor: Colors.deepOrangeAccent,
    );
  }
}
// ignore: camel_case_types
class card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 120,
        margin: EdgeInsets.all(15),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Image.asset("assets/drinks2.jpg", fit: BoxFit.cover),
              //flex: 2,
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Drinks We Have",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(" In Our Restaurant"),
                  ),
                  Expanded(
                    // flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Tabscreen()));
                          },
                          icon: Icon(
                            Icons.local_drink,
                            color: Colors.black,
                          ),
                          label: Text(
                            "Go",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            // flex: 8,
          ],
        ),
      ),
      elevation: 6,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
      shadowColor: Colors.deepOrangeAccent,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mealapp/screen1.dart';

// ignore: camel_case_types
class button extends StatelessWidget {
  final String text;
  final Size size;
  const button({@required this.text, @required this.size});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyHomePage()));
      },
      child: Container(
        height: 60,
        width: 240,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent.withOpacity(0.85),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class buttonwithicon extends StatelessWidget {
  final String text;
  final Size size;
  final Color color;
  final IconData icon;
  const buttonwithicon(
      {@required this.text,
      @required this.size,
      @required this.color,
      @required this.icon});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
          height: 50,
          width: 160,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color, //parameter
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}

// ignore: camel_case_types
class buttonwithicon1 extends StatelessWidget {
  final Size size;
  final Color color;
  final String text;
  final IconData icon;
  const buttonwithicon1(
      {@required this.size,
      @required this.color,
      @required this.icon,
      this.text});
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Center(
        child: Container(
          height: 57,
          width: 290,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color, //parameter
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(children: [
            Padding(padding: EdgeInsets.all(10)),
            Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
    );
  }
}

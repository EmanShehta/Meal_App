import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mealapp/widgets/button.dart';
import 'package:mealapp/widgets/cuvedshape.dart';

class Info extends StatelessWidget {
  static const routeName = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Information",
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/owner.jpg",
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Flutter Developer",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Phone :01146404934",
            style: TextStyle(
              fontSize: 20,
              //fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              buttonwithicon1(
                color: Color(0xff375c8f),
                icon: FontAwesomeIcons.facebookF,
                text: "      EmanShehta",
                size: null,
              ),
              buttonwithicon1(
                text: " e3036768@gmail.com",
                color: Color(0xffF34346).withOpacity(0.79),
                icon: FontAwesomeIcons.google,
                size: null,
              ),
              buttonwithicon1(
                text: "       emAnsHehta",
                color: Color(0xff31a4f0).withOpacity(0.79),
                icon: FontAwesomeIcons.twitter,
                size: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

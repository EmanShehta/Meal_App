import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mealapp/widgets/Textfiled.dart';
import 'package:mealapp/widgets/button.dart';
import 'package:mealapp/widgets/logup.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  double height = 7.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 360,
              height: 180,
              child: Image.asset("assets/w.jpg", fit: BoxFit.cover),
            ),
            Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: height,
            ),
            Text(
              'Log in to your new account of Restaurant',
              style: TextStyle(
                color: Color(0xffa3afba),
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Textfiled(
              hinttext: 'User Name',
              icondata: Icons.person_outline_rounded,
            ),
            Textfiled(
                hinttext: 'Password', icondata: Icons.lock_outline_rounded),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height + 7.0,
            ),
            button(
              text: 'Log In',
              size: null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or Connect using",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xffa3afba),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height + 3.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonwithicon(
                  text: "Facebook",
                  color: Color(0xff375c8f),
                  icon: FontAwesomeIcons.facebookF,
                  size: null,
                ),
                buttonwithicon(
                  text: "Google",
                  color: Color(0xffF34346).withOpacity(0.79),
                  icon: FontAwesomeIcons.google,
                  size: null,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => logup()));
                  },
                  child: Text(
                    " Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff095faf),
                      fontFamily: 'Raleway',
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

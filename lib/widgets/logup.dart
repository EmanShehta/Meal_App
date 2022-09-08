import 'package:flutter/material.dart';
import 'package:mealapp/widgets/Textfiled.dart';
import 'package:mealapp/widgets/button.dart';
import 'package:mealapp/widgets/login.dart';

// ignore: camel_case_types
class logup extends StatefulWidget {
  @override
  _logupState createState() => _logupState();
}

// ignore: camel_case_types
class _logupState extends State<logup> {
  bool visiabity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Let's Get Started!",
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Log up to your new account of Restaurant',
              style: TextStyle(
                color: Color(0xffa3afba),
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Textfiled(
                hinttext: 'User Name', icondata: Icons.person_outline_rounded),
            SizedBox(
              height: 10,
            ),
            Textfiled(hinttext: 'Email', icondata: Icons.email),
            SizedBox(
              height: 10,
            ),
            Textfiled(
                hinttext: 'Phone', icondata: Icons.phone_android_outlined),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: TextFormField(
                  onChanged: (v) {},
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrangeAccent,
                  ),
                  cursorColor: Colors.deepOrangeAccent,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(
                          visiabity ? Icons.visibility_off : Icons.visibility,
                          // color: Colors.white,
                          size: 30,
                          color: Colors.deepOrangeAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            visiabity = !visiabity;
                          });
                        },
                      ),
                      hintText: "Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.deepOrangeAccent),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 21.4)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: visiabity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 380,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: TextFormField(
                  onChanged: (v) {},
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.deepOrangeAccent,
                  ),
                  cursorColor: Colors.deepOrangeAccent,
                  decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: Icon(
                          visiabity ? Icons.visibility_off : Icons.visibility,
                          // color: Colors.white,
                          size: 30,
                          color: Colors.deepOrangeAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            visiabity = !visiabity;
                          });
                        },
                      ),
                      hintText: "ConFirm Password",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.deepOrangeAccent),
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 21.4)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: visiabity,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            button(
              text: 'CREATE',
              size: null,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Raleway',
                    fontSize: 17,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => login()));
                  },
                  child: Text(
                    " Login here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff095faf),
                      //color: Colors.deepOrangeAccent,
                      fontFamily: 'Raleway',
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

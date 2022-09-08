import 'package:flutter/material.dart';

class Textfiled extends StatelessWidget {
  //final int type;
  final String hinttext;
  final IconData icondata;

  const Textfiled(
      {
      // @required this.type,
      @required this.hinttext,
      @required this.icondata});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
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
                prefixIcon: Icon(
                  icondata,
                  size: 30,
                  color: Colors.deepOrangeAccent,
                ),
                hintText: hinttext,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(color: Colors.deepOrangeAccent),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 21.4)),
          ),
        ),
      ),
    );
  }
}

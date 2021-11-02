// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uber_ui_clone/page2.dart';

class StartPage extends StatelessWidget {
  StartPage({Key? key}) : super(key: key);

  final ButtonStyle style1 = ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      elevation: 15,
      primary: Color(0xFF000000),
      maximumSize: Size(370, 70));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF286EF0),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 85,
            ),
            Text(
              "Uber",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)),
            ),
            SizedBox(
              height: 35,
            ),
            Image(image: AssetImage("assets/images/img1.jpg")),
            SizedBox(
              height: 35,
            ),
            Text(
              "Move with Safety",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF)),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Page2()));
              },
              style: style1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text("Next",
                          style: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF))),
                    ],
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Row(
                    children: <Widget>[Icon(Icons.arrow_forward)],
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

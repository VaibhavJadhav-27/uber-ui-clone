// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:uber_ui_clone/signinpage.dart';

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);

  TextEditingController inputController = TextEditingController();

  final ButtonStyle style = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    elevation: 15,
    primary: Color(0xFF000000), /* maximumSize: Size(370, 70)*/
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Enter your mobile number ",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 35,
                  width: 40,
                  child: Image(
                    image: AssetImage('assets/images/flag.jpg'),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  '+91',
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF000000)),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 200,
                  child: TextField(
                    controller: inputController,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                        color: Colors.black, fontFamily: "Rubik", fontSize: 20),
                    decoration: InputDecoration(
                        hintText: "0812345679",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Rubik",
                            fontSize: 20),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(style: BorderStyle.solid))),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Or connect with social",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.blue[900],
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              style: style,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontFamily: "Rubik",
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  /*SizedBox(
                      width: 70,
                    ),*/
                  Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 25,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}

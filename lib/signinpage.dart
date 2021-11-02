// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_final_fields, must_be_immutable, unused_element, dead_code

import 'package:flutter/material.dart';
import 'package:uber_ui_clone/homepage.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  TextEditingController _inputcontroller = TextEditingController();

  bool obstext = true;

  final ButtonStyle style = ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
    elevation: 15,
    primary: Color(0xFF000000),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                )),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome back, sign in to continue ',
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF000000)),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _inputcontroller,
              obscureText: obstext,
              textAlign: TextAlign.start,
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: "Enter password ",
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState() {
                          obstext = !obstext;
                        }
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      ))),
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            Spacer(),
            Text(
              'I forgot my password',
              style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.normal,
                  fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "I don't hav an account",
              style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.normal,
                  fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "I can't sign in",
              style: TextStyle(
                color: Colors.blue[900],
                fontFamily: "Rubik",
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                style: style,
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
                ))
          ],
        ),
      )),
    );
  }
}

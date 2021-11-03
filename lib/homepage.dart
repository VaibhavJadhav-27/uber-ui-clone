// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ButtonStyle style = ElevatedButton.styleFrom(
      elevation: 15,
      primary: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue[700],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Want better pickups ?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  "Help us help you by sharing your precise location",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Share Location",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.normal),
                      ),
                      style: style,
                    ),
                    Image(
                      image: AssetImage("assets/images/loc.jpg"),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.75,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {},
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Text("Ride"),
                            Image(image: AssetImage("assets/images/car.jpg"))
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        )
      ],
    )));
  }
}

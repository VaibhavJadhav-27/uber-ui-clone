// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ButtonStyle style = ElevatedButton.styleFrom(
      elevation: 15,
      primary: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)));

  final ButtonStyle btnridesgroceriestyle = ElevatedButton.styleFrom(
    elevation: 10,
    primary: Color.fromARGB(255, 238, 238, 238),
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
  );

  final ButtonStyle map = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      primary: Colors.white,
      elevation: 5,
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blue[700],
          elevation: 0,
        ),
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          child: Expanded(
                            child: Image(
                              image: AssetImage('assets/images/profile.jpg'),
                              height: 60,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            "Vaibhav Jadhav",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Divider(
                      color: Colors.white60,
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Messages",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white60,
                                size: 18,
                              ))
                        ],
                      ),
                    ),
                    Spacer()
                  ],
                )),
            ListTile(
              leading: Text(
                'Your Trips',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Text(
                'Payment',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Text(
                'Uber pass',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Text(
                'Settings',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Spacer(),
          ],
        )),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blue[700],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "Want better pickups ?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Help us help you by sharing your precise location",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Share Location",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          style: style,
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage("assets/images/loc.jpg"),
                          height: 75,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 85,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: btnridesgroceriestyle,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Ride",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Rubik",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal),
                                ),
                                Image(
                                  image: AssetImage("assets/images/car.jpg"),
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 85,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: btnridesgroceriestyle,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Groceries",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Rubik",
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FontStyle.normal),
                                ),
                                Image(
                                  image:
                                      AssetImage("assets/images/grocery.jpg"),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextField(
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        fontFamily: "Rubik",
                      ),
                      decoration: InputDecoration(
                          hintText: "Enter a pickup point ",
                          hintStyle: TextStyle(color: Colors.black),
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Around You",
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Rubik",
                              color: Colors.black),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('assets/images/map.jpg'),
                        fit: BoxFit.cover,
                      ),
                      style: map,
                    ),
                  )
                ],
              ),
            ),
          ],
        )));
  }
}

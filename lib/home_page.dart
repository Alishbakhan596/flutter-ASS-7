import 'dart:ui';

import 'package:class7/cart_page.dart';
import 'package:class7/products_page.dart';
import 'package:class7/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200,
            width: 390,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      " Hi, Alishba                    ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_outlined, size: 36),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_bag_outlined, size: 36),
                    ),
                  ],
                ),
                Text(
                  "Welcome To Quick Medical Store",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(2, 3),
                  ),
                ]),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Medicine And Healthcare Products",
                prefix: Icon(Icons.search),
              ),
            ),
          ),
          Container(
            child: Text(
              "Top Categories",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.pinkAccent, radius: 30.0),
                  SizedBox(height: 8.0),
                  Text(
                    'Dental',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30.0,
                    // child: Icon(Icons.medical_services, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Wellness',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 30.0,
                    //  child: Icon(Icons.medical_services, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Homeo',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    radius: 30.0,
                    //child: Icon(Icons.medical_services, color: Colors.white),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Eye care',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ]),
          Container(
            child: Image.asset("assets/images/group.png"),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    child: Text(
                      "Deals of the Day",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(children: [
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsDetail()));
                      },
                      child: Text(
                        "                            More",
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 158, 230),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/medicine.jpeg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text("Test Strip"),
                            Text(
                              "Rs.112",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/medicine.jpeg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text("Test Strip"),
                            Text(
                              "Rs.112",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/medicine.jpeg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text("Test Strip"),
                            Text(
                              "Rs.112",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/medicine.jpeg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text("Test Strip"),
                            Text(
                              "Rs.112",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/panadol.jpg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text(
                              "Rs.275",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    //color: Colors.grey,
                    child: Image.asset(
                      "assets/images/vitamin.jpeg",
                      // color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.centerRight,
                    children: [
                      Container(
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text("Accu-check Active"),
                            Text(
                              "Rs.389",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
          BottomAppBar(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        icon: Icon(
                          Icons.home,
                          size: 36,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductsDetail()),
                          );
                        },
                        icon: Icon(Icons.notifications_outlined, size: 36),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box_outlined,
                            color: Colors.blue, size: 36),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Cart()),
                          );
                        },
                        icon: Icon(Icons.shopping_bag_outlined, size: 36),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profile()),
                          );
                        },
                        icon: Icon(
                          Icons.perm_identity,
                          size: 36,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

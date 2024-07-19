import 'dart:ui';

import 'package:class7/cart_page.dart';
import 'package:class7/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 2;
  List bottomNavScreens = [
    Column(
      children: [
        const Text("Home"),
      ],
    ),
    ProductsDetail(),
    Cart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
                          //color: Colors.white,
                          fontSize: 25),
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
              //border:
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
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.pink,
                height: 100,
                width: 100,
              )
            ],
          ),
          // Stack(
          //   clipBehavior: Clip.none,
          //   alignment: Alignment.center,
          //   children: [
          //     CircleAvatar(
          //       // foregroundColor: Colors.pink,
          //       backgroundColor: Colors.pinkAccent,

          //     ),
          //   ],
          // ),
          Container(
            child: Image.asset("assets/images/group.png"),
          ),
          Row(children: [
            Container(
              child: Text(
                "Deals of the Day",
                style: TextStyle(fontSize: 25),
              ),
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
                      "            More",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 158, 230),
                          fontSize: 20),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.grey,
                child: Image.asset(
                  "assets/images/medicine.jpeg",
                  // color: Colors.grey,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
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
                            MaterialPageRoute(
                                builder: (context) => ProductsDetail()),
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
                        onPressed: () {},
                        icon: Icon(Icons.notifications_outlined, size: 36),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_box_outlined,
                            color: Colors.blue, size: 36),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined, size: 36),
                      ),
                      IconButton(
                        onPressed: () {},
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

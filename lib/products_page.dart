import 'dart:convert';
import 'dart:html';

import 'package:class7/cart_page.dart';
import 'package:class7/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsDetail extends StatelessWidget {
  const ProductsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(Icons.notifications_outlined),
              ),
              Icon(Icons.shopping_bag_outlined),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sugar Free Gold Low Calories",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Etiam molis metus non purus"),
                ],
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/free.jpg",
              ),
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text("Rs.56"),
                      Text("Etiam mollis"),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        "Add to cart",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                "Package size",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  height: 72,
                  width: 92,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text(
                        "Rs.106",
                        style: TextStyle(color: Colors.amberAccent),
                      ),
                      Text(
                        "500 pellets",
                        style: TextStyle(color: Colors.amberAccent),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 72,
                  width: 92,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text(
                        "Rs.166",
                      ),
                      Text(
                        "110 pellets",
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 72,
                  width: 92,
                  color: Colors.grey,
                  child: Column(
                    children: [
                      Text(
                        "Rs.252",
                      ),
                      Text(
                        "300 pellets",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                "Products Detail",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Interdum et malesuade fames ac ante ipsum primis",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "in faucibus.Morbi ut nisi odio.Nulla facilisi.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Nunc risus massa,gravida id egestas a pretium vel",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "tellus.Praesent feugiat diam sit amet pulvinar",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "finibus.Etiam et nisi aliquet,accumsan nisi sit",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                "Ingredients",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Interdum et malesuade fames ac ante ipsum primis",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "in faucibus.Morbi ut nisi odio.Nulla facilisi.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Nunc risus massa,gravida id egestas a pretium vel",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "tellus.Praesent feugiat diam sit amet pulvinar",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "finibus.Etiam et nisi aliquet,accumsan nisi sit",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Expiry date",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "         25/12/2024",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Brand Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "         Something",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset("assets/images/rating.png"),
            ),
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.star_rounded,
                    color: Colors.yellow,
                  ),
                  Text("  4.2"),
                  Text(
                      "                                                                     5-oct-2020"),
                ],
              ),
            ),
            Container(
              child: Text(
                "Eric Hoffman",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Interdum et malesuade fames ac ante ipsum primis",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "in faucibus.Morbi ut nisi odio.Nulla facilisi.",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Nunc risus massa,gravida id egestas",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(25.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: Text(
                "                               Go To Cart                                  ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

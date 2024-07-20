import 'package:class7/products_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     Row(children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.arrow_back),
      //       ),
      //       Text("Your cart"),
      //     ])
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsDetail()));
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text(
                  "Your cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
              ],
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "2 items in your cart                                        ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      )),
                  Text(
                    "Add More",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset("assets/images/medi.jpeg"),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      " Sugar free gold",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.cancel_outlined,
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                                Text(
                                  " Bottle of 500 pellets",
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                Text(
                                  "Rs.25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Row(children: [
                          Image.asset("assets/images/download.jpeg"),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    " Sugar free gold",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                              Text(
                                " Bottle of 500 pellets",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              Text(
                                "Rs.18",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                ]),
            Container(
              child: Text(
                "Payment Summary",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Order Total                      ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "                                              228.80",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Items Discount                      ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "                                        -28.80",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Coupon Discount                      ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "                                     -15.80",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Shipping                             ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "                                             Free",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ),
            Container(
              child: Image.asset("assets/images/Line.png"),
            ),
            Container(
              child: Row(
                children: [
                  Text(
                    "Total                             ",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "               Rs.185.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
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
                "                               Place Order                                  ",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:class7/cart_page.dart';
import 'package:class7/home_page.dart';
import 'package:class7/products_page.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "My Profile",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Hi, Alishba",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    "Welcome To Quick Medical Store",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.article_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    "     Edit Profile                              ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Container(
              child: Image.asset("assets/images/Line.png"),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.feed_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    "     My Orders                              ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Container(
              child: Image.asset("assets/images/Line.png"),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.schedule,
                    color: Colors.blue,
                  ),
                  Text(
                    "     Billing                                     ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Container(
              child: Image.asset("assets/images/Line.png"),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.question_mark,
                    color: Colors.blue,
                  ),
                  Text(
                    "     Faq                                          ",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
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
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
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
          ],
        ),
      ),
    );
  }
}

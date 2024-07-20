import 'package:class7/Splash.dart';
import 'package:class7/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WalkThrough extends StatelessWidget {
  const WalkThrough({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Image.asset("assets/images/image.png"),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "View and Buy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  "Medicine Online",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text("Etiam molis metus non purus"),
                Text("faucibus sollicitudin.Pellentesque"),
                Text("sagittis mi.Integer."),
              ],
            ),
          ),
          Row(children: [
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
                              builder: (context) => SplashScreen()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 158, 230),
                          fontSize: 20),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomRight,
                  //mainAxisAlignment: MainAxisAlignment.,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 158, 230),
                          fontSize: 20),
                    ),
                  ),
                ),
              ]),
            ),
          ]),
        ]),
      ),
    );
  }
}

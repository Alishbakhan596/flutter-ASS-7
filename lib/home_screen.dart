import 'package:flutter/material.dart';
import 'package:class7/Splash.dart';
import 'package:class7/walkthrough.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 400,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WalkThrough()));
                },
                child: Text("WalkThrough"),
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  side: BorderSide(color: Colors.black54, width: 3),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

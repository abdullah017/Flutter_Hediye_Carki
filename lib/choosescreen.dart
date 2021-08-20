import 'package:flutter/material.dart';
import 'package:wheelandspin/spinwheelscreen.dart';

class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SpinWheel()));
              },
              child: Container(
                height: 40,
                width: 200,
                color: Colors.blue,
                child: Center(child: Text("SPIN WHEEL")),
              ),
            )
          ],
        ),
      ),
    );
  }
}

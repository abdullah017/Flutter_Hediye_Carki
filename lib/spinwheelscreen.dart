
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheel extends StatefulWidget {
  @override
  _SpinWheelState createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  int selected = 0;
  String endOfSpin;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFD3416),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              child: FortuneWheel(
                animateFirst: false,
                selected: selected,
                physics: CircularPanPhysics(
                  duration: Duration(seconds: 1),
                  curve: Curves.decelerate,
                ),
                onFling: () {
                  setState(() {
                    selected = Random().nextInt(4);
                  });
                },
                items: [
                  FortuneItem(
                    child: Text(
                      "5000₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xffE50001),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "2500₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Colors.lightGreen,
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "1000₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xffFECB00),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "500₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xff333333),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "250₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xffF89400),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "100₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xff438602),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "50₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xff9B289F),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                  FortuneItem(
                    child: Text(
                      "25₺",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    style: FortuneItemStyle(
                      color: Color(0xff5E274F),
                      borderColor: Colors.white,
                      borderWidth: 1,
                    ),
                  ),
                ],
                onAnimationEnd: () {
                  print("Value : " + "$selected");
                  if (selected != 0) {
                    switch (selected) {
                      case 1:
                        endOfSpin = "TEBRİKLER 2500₺ KAZANDIN";
                        showAlert(context);
                        break;
                      case 2:
                        endOfSpin = "TEBRİKLER 1000₺ KAZANDIN";
                        showAlert(context);
                        break;
                      case 3:
                        endOfSpin = "TEBRİKLER 500₺ KAZANDIN";
                        showAlert(context);
                        break;
                      case 4:
                        endOfSpin = "TEBRİKLER 250₺ KAZANDIN";
                        showAlert(context);
                        break;
                      case 5:
                        endOfSpin = "TEBRİKLER 100₺ KAZANDIN";
                        showAlert(context);
                        break;
                      case 6:
                        endOfSpin = "TEBRİKLER 50₺ KAZANDIN";
                        showAlert(context);
                        break;
                    }
                  } else {
                    endOfSpin = "TEBRİKLER BÜYÜK ÖDÜL OLAN 5000₺ KAZANDIN!";
                    showAlert(context);
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = Random().nextInt(4);
                  });
                },
                child: Container(
                  color: Colors.white,
                  height: 50,
                  width: 100,
                  child: Center(
                    child: Text("ÇARKI ÇEVİR"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(endOfSpin),
        actions: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    selected = Random().nextInt(4);
                    Navigator.of(context).pop();
                  });
                },
                child: Text('TEKRAR DENE'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

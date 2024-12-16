import 'package:flutter/material.dart';

class Termsofuse extends StatelessWidget {
  const Termsofuse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset("assets/image/food.png"),
          ),
        ),
        leadingWidth: 80,
        title: Text(
          "Terms And Conditions",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

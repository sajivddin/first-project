import 'package:flutter/material.dart';

class Lastpage extends StatefulWidget {
  const Lastpage({super.key});

  @override
  State<Lastpage> get createState => _LastpageState();
}

class _LastpageState extends State<Lastpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
        title: Container(
          margin: EdgeInsets.only(left: 40),
          child: Text(
            "How it works",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/image/work.png"),
                Container(
                  margin: EdgeInsets.only(top: 100,left: 140),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(25, 44, 84, 100),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_right,
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

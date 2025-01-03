import 'package:flutter/material.dart';

class Frequently extends StatefulWidget {
  const Frequently({super.key});

  @override
  State<Frequently>  createState() => _FrequentlyState();
}

class _FrequentlyState extends State<Frequently> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: 24,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 20),
            Text(
              "Frequently Asked Questions",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: 360,
            height: 150,
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 44, 84, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        "What is the primary purpose of this page?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,top: 18),
                  child: Text(
                    "This app is design to help users invest,trade,and",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 70),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "monitor their stock market portfolios.It provides ",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 70),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "real-time market data,insights,and tools to make",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 70),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "informed financial decisions.",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 70),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 44, 84, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "What is primary purpose of this app?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 44, 84, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "What is primary purpose of this app?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 44, 84, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "What is primary purpose of this app?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              color: Color.fromRGBO(25, 44, 84, 100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "What is primary purpose of this app?",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

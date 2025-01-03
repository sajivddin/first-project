import 'package:flutter/material.dart';

import 'Christopher.dart';

class MaryJohn extends StatefulWidget {
  const MaryJohn({super.key});

  @override
  State<MaryJohn>  createState() => _MaryJohnState();
}

class _MaryJohnState extends State<MaryJohn> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Mary Jones",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Graphic Designer At Google",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "26",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Courses"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "15800",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Students"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "8750",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("Ratings"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFollowing = !isFollowing;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 60),
                    backgroundColor: Color.fromRGBO(232, 241, 255, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide(
                        color: Color.fromRGBO(232, 241, 255, 100),
                      ),
                    ),
                  ),
                  child: Text(
                    isFollowing ? 'Following' : 'Follow',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 60),
                    backgroundColor: Color.fromRGBO(26, 67, 78, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Message",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "\"But how much, or rather, can it now do as much as it did then? Nor am I unaware that there is utility in history, not only pleasure.\"",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(160, 164, 171, 100),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: TabBar(
                dividerColor: Colors.white,
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.red,
                tabs: [
                  Container(
                    width: 180,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 249, 255, 100),
                    ),
                    child: Center(
                      child: Text(
                        "Course",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 26, 67, 47),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Christopher(),
                        ),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 52,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 249, 255, 100),
                      ),
                      child: Center(
                        child: Text(
                          "Ratings",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 67, 47),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5, right: 5),
                            child: Icon(
                              Icons.bookmark,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          "Graphic Design Advan..",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 78, 47),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          "799/-",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            const SizedBox(width: 4),
                            Text('4.2'),
                            const SizedBox(width: 8),
                            Text('|'),
                            const SizedBox(width: 8),
                            Text('7830 Std'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Divider(
                indent: 40,
                endIndent: 40,
                color: Color.fromRGBO(180, 189, 196, 100),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5),
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 5, right: 5),
                            child: Icon(
                              Icons.bookmark_border,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          "Graphic Design Advan..",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 78, 47),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 10),
                        child: Text(
                          "799/-",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 10),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 16),
                            const SizedBox(width: 4),
                            Text('4.2'),
                            const SizedBox(width: 8),
                            Text('|'),
                            const SizedBox(width: 8),
                            Text('980 Std'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

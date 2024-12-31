import 'package:flutter/material.dart';

import 'Review.dart';

class Christopher extends StatefulWidget {
  const Christopher({super.key});

  @override
  State<Christopher> get createState => _ChristopherState();
}

class _ChristopherState extends State<Christopher> {
  bool isFollowing = false;
  bool isFavorite = true;
  bool Favorite = false;
  int favoriteCount = 760;
  int count = 918;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
    if (isFavorite) {
      favoriteCount++;
    } else {
      favoriteCount--;
    }
  }

  void toggFavorite() {
    setState(() {
      Favorite = !Favorite;
    });
    if (Favorite) {
      count++;
    } else {
      count--;
    }
  }

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
              "Christopher J. Levine",
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
                          builder: (context) => Review(),
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
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Mary",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 60,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        color: Color.fromRGBO(0, 26, 67, 100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text("4.2")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 20),
              child: Text(
                "This course has been very useful.",
                style: TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: Text(
                "Mentor was well spoken totally loved it.",
                style: TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 60),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      !isFavorite ? Icons.favorite_border : Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: toggleFavorite,
                  ),
                  // Icon(Icons.favorite_border),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "$favoriteCount",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "2 Weeks Agos",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Divider(
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Natasha B. Lambert",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 60,
                    height: 26,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(13),
                      border: Border.all(
                        color: Color.fromRGBO(0, 26, 67, 100),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text("4.8")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 20),
              child: Text(
                "This course has been very useful.",
                style: TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60),
              child: Text(
                "Mentor was well spoken totally loved it.",
                style: TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 60),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      !Favorite ? Icons.favorite_border : Icons.favorite,
                      color: Favorite ? Colors.red : Colors.grey,
                    ),
                    onPressed: toggFavorite,
                  ),
                  // Icon(Icons.favorite_border),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "$count",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "2 Weeks Agos",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

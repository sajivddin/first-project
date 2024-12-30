import 'package:flutter/material.dart';

import 'MaryJohn.dart';
import 'Mentors.dart';
import 'Video.dart';

class OnlineCourse extends StatefulWidget {
  const OnlineCourse({super.key});

  @override
  State<OnlineCourse> get createState => _OnlineCourseState();
}

class _OnlineCourseState extends State<OnlineCourse> {
  IconData bookicon = Icons.bookmark_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Online Courses",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Search for..',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.black),
                suffixIcon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 26, 67, 47),
                  ),
                  child: Icon(Icons.tune, color: Colors.white),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromRGBO(26, 67, 78, 47),
                    ),
                    child: Center(
                      child: Text(
                        "Courses",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Mentors(),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color.fromRGBO(232, 241, 255, 100),
                      ),
                      child: Center(
                        child: Text(
                          "Mentors",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Result for",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "“Graphic Design”",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "2480 Founds",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(26, 67, 78, 47),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(26, 67, 78, 47),
                      size: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Video(),
                    ),
                  );
                },
                child: ListView(
                  children: [
                    buildCourseCard('Graphic Design', 'Graphic Design Advanced',
                        '7058/-', 4.2, 7830),
                    buildCourseCard('Graphic Design', 'Advertisement Design',
                        '800/-', 3.9, 12680),
                    buildCourseCard('Programming', 'Graphic Design Advanced',
                        '599/-', 4.2, 990),
                    buildCourseCard('Web Development', 'Web Developer Concepts',
                        '499/-', 4.9, 14580),
                    buildCourseCard('SEO & Marketing',
                        'Digital Marketing Course', '1500/-', 4.8, 12340),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Course",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forward_to_inbox_rounded),
            label: "Inbox",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Transaction",
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MaryJohn(),
                    ),
                  );
                },
                child: Icon(Icons.account_circle)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

Widget buildCourseCard(
    String category, String title, String price, double rating, int students) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Container(
          width: 130,
          height: 130,
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
            color: Colors.white,
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
                      category,
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
                  title,
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
                  price,
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
                    Text('$rating'),
                    const SizedBox(width: 8),
                    Text('|'),
                    const SizedBox(width: 8),
                    Text('$students Std'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

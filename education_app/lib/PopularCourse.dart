import 'package:flutter/material.dart';

class PopularCourse extends StatefulWidget {
  const PopularCourse({super.key});

  @override
  State<PopularCourse> get createState => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
  IconData bookmarkIcon = Icons.bookmark_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Popular Courses",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 58,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("All"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 26, 78, 47),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Graphic Design",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("3D Design"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Arts & Humanities",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Course Cards
          Expanded(
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
                buildCourseCard('SEO & Marketing', 'Digital Marketing Course',
                    '1500/-', 4.8, 12340),
              ],
            ),
          ),
        ],
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
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget buildCourseCard(String category, String title, String price,
      double rating, int students) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      child: InkWell(
                        onTap: () {
                          setState(
                            () {
                              if (bookmarkIcon == Icons.bookmark_border) {
                                bookmarkIcon = Icons.bookmark;
                              } else {
                                bookmarkIcon = Icons.bookmark_border;
                              }
                            },
                          );
                        },
                        child: Icon(
                          bookmarkIcon,
                        ),
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
}

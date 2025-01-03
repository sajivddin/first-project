import 'package:flutter/material.dart';

import 'Remove.dart';

class MyBookMark extends StatefulWidget {
  const MyBookMark({super.key});

  @override
  State<MyBookMark>  createState() => _MyBookMarkState();
}

class _MyBookMarkState extends State<MyBookMark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Bookmark",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
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
          SizedBox(height: 25),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Remove(),
                  ),
                );
              },
              child: ListView(
                children: [
                  buildCourseCard('Graphic Design', 'Graphic Design Advanced',
                      '799/-', 4.2, 7830),
                  buildCourseCard('Graphic Design', 'Advertisement Design',
                      '499/-', 3.9, 12680),
                  buildCourseCard('Programming', 'Graphic Design Advanced',
                      '199/-', 4.2, 990),
                  buildCourseCard('Web Development', 'Web Developer conce..',
                      '899/-', 4.9, 14580),
                  buildCourseCard('SEO & Marketing',
                      'Digital Marketing Caree..', '299/-', 4.8, 10252),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildCourseCard(
    String category, String title, String price, double rating, int students) {
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
                      onTap: () {},
                      child: Icon(
                        Icons.bookmark,
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

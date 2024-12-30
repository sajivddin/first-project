import 'package:education_app/AllCategoary.dart';
import 'package:education_app/Notifications.dart';
import 'package:education_app/onlinecourse.dart';
import 'package:flutter/material.dart';

import 'Metro.dart';
import 'PopularCourse.dart';
import 'filter.dart';

class HiJuned extends StatefulWidget {
  const HiJuned({super.key});

  @override
  State<HiJuned> get createState => _HiJunedState();
}

class _HiJunedState extends State<HiJuned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Juned',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'What Would you like to learn Today?\nSearch Below.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications(),
                  ),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(22, 127, 113, 100),
                  ),
                ),
                child: Icon(
                  Icons.notifications_none,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value) {
                  if (value.toLowerCase() == 'online course') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnlineCourse(),
                      ),
                    );
                  } else if (value.toLowerCase() == 'filter') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Filter(),
                      ),
                    );
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: 'Search for..',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  suffixIcon: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllCategory(),
                        ),
                      );
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(0, 26, 67, 47),
                      ),
                      child: Icon(Icons.tune, color: Colors.white),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 360,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  // color: Color.fromRGBO(26, 67, 68, 83),
                  color: Color.fromRGBO(0, 26, 78, 47),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "25% Off*",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Today’s Special",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Get a Discount for Every ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Course Order only Valid for",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Today.!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(0, 26, 78, 47),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Text(
                      'See All >',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 26, 78, 47),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryButton(title: "3D Design"),
                  CategoryButton(title: "Arts & Humanities"),
                  CategoryButton(title: "Graphic Design"),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Polupar Courses",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PopularCourse(),
                        ),
                      );
                    },
                    child: const Text(
                      'See All >',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 26, 78, 47),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
              SizedBox(height: 16),
              CourseCard(
                title: "Graphic Design Advanced",
                price: "850/- |",
                rating: "4.2 |",
                students: "7830 Std",
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Top Mentor",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Metro(),
                        ),
                      );
                    },
                    child: const Text(
                      'See All >',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 26, 78, 47),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MentorCard(name: "Jiya"),
                    MentorCard(name: "Aman"),
                    MentorCard(name: "Rahul.J"),
                    MentorCard(name: "Manav"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  const CategoryButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title, rating, students, price;
  const CourseCard({
    required this.title,
    required this.price,
    required this.rating,
    required this.students,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 260,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
              ),
              Container(
                width: 260,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(240, 240, 240, 100),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
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
                          margin: EdgeInsets.only(left: 100, top: 10),
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Color.fromRGBO(
                              0,
                              26,
                              78,
                              47,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
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
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 78, 47),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              rating,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 78, 47),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              students,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 78, 47),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 260,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
              ),
              Container(
                width: 260,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color.fromRGBO(240, 240, 240, 100),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
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
                          margin: EdgeInsets.only(left: 100, top: 10),
                          child: Icon(
                            Icons.notifications_none_outlined,
                            color: Color.fromRGBO(
                              0,
                              26,
                              78,
                              47,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
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
                      margin: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 78, 47),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              rating,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 78, 47),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              students,
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 78, 47),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MentorCard extends StatelessWidget {
  final String name;
  const MentorCard({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(),
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 4),
        Text(
          name,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

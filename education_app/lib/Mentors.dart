import 'package:flutter/material.dart';

import 'MyBookMark.dart';

class Mentors extends StatefulWidget {
  const Mentors({super.key});

  @override
  State<Mentors> get createState => _MentorsState();
}

class _MentorsState extends State<Mentors> {
  List myList = [
    {
      "title": "Ramal",
      "subtitle": "3D Design",
    },
    {
      "title": "Aman MK",
      "subtitle": "3D Design",
    },
    {
      "title": "Manav M",
      "subtitle": "3D Design",
    },
    {
      "title": "Siya Dhawal",
      "subtitle": "3D Design",
    },
    {
      "title": "Robert jr",
      "subtitle": "3D Design",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mentors",
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
                      color: Color.fromRGBO(232, 241, 255, 100),
                    ),
                    child: Center(
                      child: Text(
                        "Courses",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromRGBO(26, 67, 78, 47),
                    ),
                    child: Center(
                      child: Text(
                        "Mentors",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
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
                      " “3D Design”",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Text(
                      "18 Founds",
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
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyBookMark(),
                    ),
                  );
                },
                child: ListView.builder(
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 66,
                          height: 66,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myList[index]["title"].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color.fromRGBO(32, 34, 68, 100),
                                ),
                              ),
                              Text(
                                myList[index]["subtitle"].toString(),
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(84, 84, 84, 100),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
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
            icon: Icon(Icons.account_circle),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

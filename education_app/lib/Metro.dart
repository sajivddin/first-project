import 'package:flutter/material.dart';

class Metro extends StatefulWidget {
  const Metro({super.key});

  @override
  State<Metro> get createState => _MetroState();
}

class _MetroState extends State<Metro> {
  List myList = [
    {
      "title": "Jiya Shetty",
      "subtitle": "3D Design",
    },
    {
      "title": "Donald S",
      "subtitle": "Arts & Humanities",
    },
    {
      "title": "Aman",
      "subtitle": "Personal Development",
    },
    {
      "title": "Vrushab. M",
      "subtitle": "SEO & Marketing",
    },
    {
      "title": "Robert William",
      "subtitle": "Office Productivity",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Top Mentors",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                )
              ],
            );
          },
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

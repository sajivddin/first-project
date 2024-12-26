import 'package:flutter/material.dart';

import 'Search.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Category",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Search for..',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(0, 26, 67, 47),
                  ),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                suffixStyle: TextStyle(
                  backgroundColor: Color.fromRGBO(0, 26, 67, 47),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/image/3d.png"),
                      Text(
                        "3D Design",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Search(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/image/graphic.png"),
                        Text(
                          "Graphic Design",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset("assets/image/web.png"),
                      Text(
                        "Web Development",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/image/seo.png"),
                      Text(
                        "SEO & Marketing",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 10, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.account_balance,
                        size: 60,
                        color: Color.fromRGBO(150, 161, 195, 100),
                      ),
                      Text(
                        "Finance & Accounting",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/image/person.png"),
                      Text(
                        "Personal Development",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.settings,
                        size: 60,
                        color: Colors.blue,
                      ),
                      Text(
                        "Office Productivity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset("assets/image/hr.png"),
                      Text(
                        "HR Management",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(32, 34, 68, 80),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

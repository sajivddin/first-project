import 'package:flutter/material.dart';

class Curriculcum extends StatelessWidget {
  const Curriculcum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 360,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 16, // Distance from the top
                  left: 16,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(26, 67, 78, 100),
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 360,
              height: 560,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 280),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(0, 67, 78, 47),
                    ),
                    child: Icon(
                      Icons.ondemand_video,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Graphic Design",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Text(
                          "4.2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 6),
                    child: Text(
                      "Design Principles: Organizing ..",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 26, 67, 47),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        Icon(Icons.videocam_outlined),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          child: Text(
                            "21 Class",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 67, 47),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          child: Text(
                            "|",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 67, 47),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          child: Icon(
                            Icons.access_time_rounded,
                            color: Color.fromRGBO(0, 26, 67, 47),
                            size: 20,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 9),
                          child: Text(
                            "42 Hours",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 67, 47),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 70),
                          child: Text(
                            "499/-",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    child: Row(
                      children: [
                        Container(
                          width: 180,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 249, 255, 100),
                          ),
                          child: Center(
                            child: Text(
                              "About",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 67, 47),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(245, 249, 255, 100),
                          ),
                          child: Center(
                            child: Text(
                              "Curriculcum",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 26, 67, 47),
                                fontWeight: FontWeight.bold,
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
                        Text(
                          "Section 01",
                          style: TextStyle(
                            color: Color.fromRGBO(32, 34, 64, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Container(
                          child: Text(
                            " - Introducation",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: Text(
                            "25 Mins",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(232, 241, 255, 100),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "01",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Why Using Graphic De..",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("15 Mins"),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 46,
                          height: 46,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(232, 241, 255, 100),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "02",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Setup Your Graphic De..",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("10 Mins"),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10, top: 10),
                          child: Icon(
                            Icons.play_circle_fill_outlined,
                            color: Colors.orange,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Divider(),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 350,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromRGBO(26, 67, 78, 47),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 80),
                            child: Text(
                              "Enroll Course - 499/-",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Color.fromRGBO(26, 67, 78, 47),
                            ),
                          ),
                        ],
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

import 'package:flutter/material.dart';

import 'Curriculcum.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> get createState => _VideoState();
}

class _VideoState extends State<Video> {
  bool isFavorite = false;
  bool Favorite = false;
  int favoriteCount = 578;
  int count = 578;

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
                )
              ],
            ),
            Container(
              width: 360,
              height: 394,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Curriculcum(),
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
                                "Curriculcum",
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
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Graphic Design now a popular profession graphic"
                      " design by off your carrer about tantas regiones"
                      " barbarorum pedibus obiit",
                      style: TextStyle(
                        color: Color.fromRGBO(160, 164, 171, 100),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Graphic Design n a popular profession l Cur tantas"
                      "regiones barbarorum pedibus obiit, maria transmi"
                      "Et ne nimium beatus est; Addidisti ad extremum etiam Read More",
                      style: TextStyle(
                        color: Color.fromRGBO(160, 164, 171, 100),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Instructor",
                    style: TextStyle(
                      color: Color.fromRGBO(32, 34, 64, 100),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 13),
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/image/man1.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Robert jr",
                              style: TextStyle(
                                color: Color.fromRGBO(32, 34, 64, 100),
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Graphic Design",
                              style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 100),
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(Icons.message),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Divider(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "What You’ll Get",
                style: TextStyle(
                  color: Color.fromRGBO(32, 34, 64, 100),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.library_books_outlined),
                        Text(
                          "  25 Lessons",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.mobile_friendly_sharp),
                        Text(
                          "  Access Mobile, Desktop & TV",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.bar_chart),
                        Text(
                          "  Beginner Level",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.audiotrack),
                        Text(
                          "  Audio Book",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.lock_outline),
                        Text(
                          "  Lifetime Access",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.quiz),
                        Text(
                          "  100 Quizzes",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.workspace_premium),
                        Text(
                          "  Certificate of Completion",
                          style: TextStyle(
                            color: Color.fromRGBO(84, 84, 84, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10),
              child: Row(
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 26, 67, 100),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(0, 26, 67, 100),
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
                    ),
                    child: Image.asset("assets/image/m.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Will",
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
                        Text("4.5")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 60),
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
              margin: EdgeInsets.only(top: 20, left: 60),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      !isFavorite ? Icons.favorite_border : Icons.favorite,

                      color:
                          isFavorite ? Colors.red : Colors.grey, // Change color
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
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/image/girl.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          "Will",
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
                        Text("4.5")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, left: 60),
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
              margin: EdgeInsets.only(top: 20, left: 60),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      !Favorite ? Icons.favorite_border : Icons.favorite,

                      color:
                          Favorite ? Colors.red : Colors.grey, // Change color
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
    );
  }
}

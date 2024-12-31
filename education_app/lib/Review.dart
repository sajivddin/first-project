import 'package:flutter/material.dart';

import 'WriteReview.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> get createState => _ReviewState();
}

class _ReviewState extends State<Review> {
  List myList = [
    {
      'name': 'Heather S. McMullen',
      'rating': '4.2',
      'txt': 'The Course is Very Good dolor sit amet,'
          'con sect tur adipiscing elit.'
          'Neturales divitias dixit parab les esse..',
    },
    {
      'name': 'Natasha B. Lambert',
      'rating': '4.8',
      'txt': 'The Course is Very Good dolor veterm,'
          'quo etiam utuntur hi capiamus..',
    },
    {
      'name': 'Marshall A. Lester',
      'rating': '4.6',
      'txt': 'The Course is Very Good dolor sit amet,'
          'con sect tur adipiscing elit.'
          'Naturales divitias dixit parab les esse..',
    },
    {
      'name': 'Frances D. Stanford',
      'rating': '4.8',
      'txt': 'The Course is Very Good dolor sit amet,'
          'con sect tur adipiscing elit.'
          'Naturales divitias dixit parab les esse..',
    }
  ];
  List<bool> favoriteStatus = List.generate(10, (index) => false);
  List<int> favoriteCount = [760, 914, 918, 450];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reviews"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              "4.8",
              style: TextStyle(
                color: Color.fromRGBO(0, 26, 67, 47),
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                ],
              ),
              Text(
                "Based on 448 Reviews",
                style: TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 100),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 26, 67, 47),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Excellect",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Good",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Average",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(232, 241, 255, 100),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Below Average",
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 22),
                      child: Container(
                        width: 350,
                        height: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white70,
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10, left: 10),
                                  width: 46,
                                  height: 46,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20, left: 10),
                                  child: Text(
                                    myList[index]['name'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(top: 20, right: 10),
                                  width: 60,
                                  height: 26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(13),
                                    color: Color.fromRGBO(232, 241, 255, 100),
                                    border: Border.all(
                                      color: Color.fromRGBO(26, 67, 78, 100),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        myList[index]['rating'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Text(
                                myList[index]['txt'].toString(),
                                style: TextStyle(
                                    color: Color.fromRGBO(84, 84, 84, 100),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      favoriteStatus[index]
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: favoriteStatus[index]
                                          ? Colors.red
                                          : null,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        // Toggle favorite status
                                        favoriteStatus[index] =
                                            !favoriteStatus[index];
                                        // Update count based on favorite status
                                        if (favoriteStatus[index]) {
                                          favoriteCount[index]++;
                                        } else {
                                          favoriteCount[index]--;
                                        }
                                      });
                                    },
                                  ),
                                  // Icon(Icons.favorite_border),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '${favoriteCount[index]}',
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
                    ),
                  ],
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WriteReview(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 26, 67, 47),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 80),
                    child: Text(
                      "Write a Review",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

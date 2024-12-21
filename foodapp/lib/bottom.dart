import 'package:flutter/material.dart';
import 'package:foodapp/cartscreen.dart';

import 'ProfileScreen.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> get createState => _BottomState();
}

class _BottomState extends State<Bottom> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(233, 145, 82, 43),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  child: Image.asset("assets/image/color.png"),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/image/Chicken.png",
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(233, 145, 82, 43),
                      ),
                      child: Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(233, 145, 82, .40),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(233, 145, 82, .40),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(233, 145, 82, .40),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 22, left: 50),
              width: 256,
              height: 106,
              decoration: BoxDecoration(
                // color: Color.fromRGBO(0, 0, 0, 100),
                color: Colors.black,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Special Offer",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "for October",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          width: 65,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(),
                          ),
                          child: Center(
                            child: Text(
                              "Buy Now",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Image.asset("assets/image/chicka.png"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 75, left: 10),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset("assets/image/chicken1.png"),
                        Text(
                          "Chicken mix",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Image.asset("assets/image/chicken2.png"),
                        Text(
                          "Fresh mutton",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Image.asset("assets/image/fish.png"),
                        Text(
                          "Fish",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 65, left: 10),
              child: Row(
                children: [
                  Text(
                    "Today's Deals",
                    style: TextStyle(
                      color: Color.fromRGBO(233, 145, 82, .90),
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        color: Color.fromRGBO(233, 145, 82, .90),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Cartscreen(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 16, left: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Image.asset("assets/image/sheapmeat.png"),
                                Container(
                                  margin: EdgeInsets.only(left: 85),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        isFavorite = !isFavorite;
                                      });
                                    },
                                    child: Icon(
                                      isFavorite
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isFavorite
                                          ? Colors.red
                                          : Colors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Sheap Meat",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Text(
                              "Form ₹ 120.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 60),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/frozenmeat.png"),
                              Container(
                                margin: EdgeInsets.only(left: 85),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Frozen Meat",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form Rs.140.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/goatmutton.png"),
                              Container(
                                margin: EdgeInsets.only(left: 85),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "goat Mutton Best",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 179.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/whitechicken.png"),
                              Container(
                                margin: EdgeInsets.only(left: 90),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "White Chicken",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form Rs.600.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 30),
              child: Text(
                "Handpicked for you",
                style: TextStyle(
                  color: Color.fromRGBO(233, 145, 82, .90),
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/rawchicken.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Raw Chicken",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 395.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 6),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/muttomran.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mutton Ran",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 475.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/chickenleg.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Chicken Leg",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 450.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 6),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/freshmutton.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Fresh Mutton",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 349.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/eatmutton.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Eat Mutton Packaging Type",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "Form ₹ 349.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 6),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/freshchicken.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Fresh Chicken Meat",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 349.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16, left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/freshmeat.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mutton Mix Cut",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 349.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 16, right: 6),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/image/muttonbonless.png"),
                              Container(
                                margin: EdgeInsets.only(left: 130),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Mutton Boneless",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Text(
                            "Form ₹ 349.00",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 60),
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromRGBO(233, 145, 82, .90),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              size: 30,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}

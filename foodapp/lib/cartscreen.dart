import 'package:flutter/material.dart';
import 'package:foodapp/ProfileScreen.dart';
import 'package:foodapp/buynow.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen>  createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(233, 145, 82, 43),
      ),
      body: Column(
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
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Buynow(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              width: 343,
              height: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/image/frame.png",
                        width: 70,
                        height: 70,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: Text(
                                "Chicken",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: 150,
                              ),
                              child: Icon(
                                Icons.cancel,
                                size: 38,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "800",
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 50), fontSize: 15),
                        ),
                        Row(
                          children: [
                            Text(
                              "Rs. 220.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 50),
                                  fontSize: 15),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (count >= 1) {
                                    count--;
                                  }
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 70),
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.minimize_outlined,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "$count",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  count++;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 22,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 218),
            width: 375,
            height: 75,
            decoration: BoxDecoration(
              color: Color.fromRGBO(233, 145, 82, .90),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 260, top: 10),
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                        color: Color.fromRGBO(233, 145, 82, .90),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 75),
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Rs. 395.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
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

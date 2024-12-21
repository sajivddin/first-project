import 'package:flutter/material.dart';
import 'package:sajivddin/addfunds.dart';
import 'package:sajivddin/chooseplan.dart';
import 'package:sajivddin/frequently.dart';
import 'package:sajivddin/lastpage.dart';
import 'package:sajivddin/myportfolio.dart';
import 'package:sajivddin/performance.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account>get createState => _AccountState();
}

class _AccountState extends State<Account> {
  List myList = [
    {
      "imageUrl": 'assets/image/zomato.png',
      'name': "Zomato",
      'color': Colors.red,
    },
    {
      "imageUrl": 'assets/image/tcs.png',
      'name': "TCS",
      'color': Colors.purple,
    },
    {
      "imageUrl": 'assets/image/bank.png',
      'name': "HDFC",
      'color': Color.fromRGBO(17, 34, 64, 100),
    },
    {
      "imageUrl": 'assets/image/icici.png',
      'name': "BNB",
      'color': Colors.green,
    },
    {
      "imageUrl": 'assets/image/S.png',
      'name': "SQL",
      'color': Colors.black,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      ),
      drawer: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Drawer(
          backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                          child: Image.asset(
                        "assets/image/man.png",
                      )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "John Mark",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(height: 139),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Addfunds(),
                        ),
                      );
                    },
                    child: Text(
                      "Add Funds",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Chooseplan(),
                        ),
                      );
                    },
                    child: Text(
                      "Subscribe Plan",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Lastpage(),
                        ),
                      );
                    },
                    child: Text(
                      "How it workds ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Frequently(),
                        ),
                      );
                    },
                    child: Text(
                      "FaQ ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Myportfolio(),
                        ),
                      );
                    },
                    child: Text(
                      "Notifications ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Performance(),
                        ),
                      );
                    },
                    child: Text(
                      "Send Query ",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 18,
                          color: Colors.red,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(color: Colors.red, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Username",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 90,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(0, 89, 231, 100),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 80, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TOTAL AMOUNT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "\$45,000",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 15),
                        height: 60,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(17, 34, 64, 100),
                        ),
                        child: Icon(
                          Icons.wallet,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 89, 231, 100),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 80, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "INVESTED AMOUNT",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "\$45,000",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 15),
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(17, 34, 64, 100),
                          ),
                          child: Icon(
                            Icons.wallet,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 90,
                          width: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(0, 89, 231, 100),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 80, top: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "BALANCE",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "\$45,000",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 15),
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(17, 34, 64, 100),
                          ),
                          child: Icon(
                            Icons.wallet,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Stack(
                        children: [
                          Container(
                            height: 90,
                            width: 165,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(0, 89, 231, 100),
                            ),
                            child: Container(
                              margin: EdgeInsets.only(left: 80, top: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "RETURN",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 9),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "14%",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, top: 15),
                            height: 60,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(17, 34, 64, 100),
                            ),
                            child: Icon(
                              Icons.wallet,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Text(
                  "Recently Closed",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 18),
                        width: 398,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(25, 44, 64, 100),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                // color: myList[index]["color"],
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Image.asset(
                                  myList[index]["imageUrl"].toString(),
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                myList[index]["name"],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ),
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "\$67,203",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      "2.15%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 11),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text(
                                "\$2.15%",
                                style: TextStyle(
                                    color: Colors.green, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(16, 35, 65, 100),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code,
              size: 25,
              color: Colors.white,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 25,
                color: Colors.white,
              ),
              label: 'market'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                size: 25,
                color: Colors.white,
              ),
              label: 'wallet',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 25,
              color: Colors.white,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Performance extends StatefulWidget {
  const Performance({super.key});

  @override
  State<Performance> get createState => _PerformanceState();
}

class _PerformanceState extends State<Performance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
        leading: Container(
          child: Image.asset("assets/image/drawerimage.png"),
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
                "My Portfolio",
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
              SizedBox(
                height: 40,
              ),
              Text(
                "Performance Chart",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 380,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(17, 34, 64, 100),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Last Month",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Last Year",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "Overall",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/image/ss.png"),
              ),
              SizedBox(height: 40),
              Text(
                "Share",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 398,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(17, 34, 64, 100),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "Zomato",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "Zomato",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$67,203",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                            Text(
                              "2.15%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 11),
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
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 398,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(17, 34, 64, 100),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "tCS",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "TCS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$67,203",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                            Text(
                              "2.15%",
                              style:
                                  TextStyle(color: Colors.green, fontSize: 11),
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
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                width: 398,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(17, 34, 64, 100),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 20),
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "HDFC bank",
                          style: TextStyle(color: Colors.red, fontSize: 10),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 15),
                      child: Text(
                        "HDFC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$67,203",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.green,
                            ),
                            Text(
                              "2.15%",
                              style:
                              TextStyle(color: Colors.green, fontSize: 11),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        "\$2.15%",
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
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

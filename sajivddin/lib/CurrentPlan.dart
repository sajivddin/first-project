import 'package:flutter/material.dart';

class Currentplan extends StatefulWidget {
  const Currentplan({super.key});

  @override
  State<Currentplan>get  createState => _CurrentplanState();
}

class _CurrentplanState extends State<Currentplan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
        leading: Container(
          child: Image.asset("assets/image/drawerimage.png"),
        ),
        title: Container(
          margin: EdgeInsets.only(left: 40),
          child: Text(
            "Current Subscribe",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Image.asset("assets/image/cuate.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 95),
                child: Container(
                  width: 398,
                  height: 306,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromRGBO(0, 89, 231, 100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 25),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.wallet,
                              size: 20,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25, left: 160),
                            width: 90,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Current Plan",
                                style: TextStyle(
                                  color: Color.fromRGBO(5, 61, 154, 100),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, left: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Premium Plan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Feature one will go here",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Feature on will go here",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Feature on will go here",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 33),
                              child: Row(
                                children: [
                                  Text(
                                    "\$5/",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                  Text(
                                    "month",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Text(
                                      "manage plan",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: 15,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

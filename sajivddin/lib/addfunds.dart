import 'package:flutter/material.dart';

class Addfunds extends StatefulWidget {
  const Addfunds({super.key});

  @override
  State<Addfunds> get createState => _AddfundsState();
}

class _AddfundsState extends State<Addfunds> {
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
                "Add Funds",
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
                  "Enter Amount",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(0, 89, 231, 100),
                      minimumSize: Size(399, 49),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )),
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image.asset("assets/image/rectangle.png"),
                      Container(
                        margin: EdgeInsets.only(left: 120, top: 40),
                        child: Image.asset("assets/image/card2.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 120, top: 40),
                        child: Image.asset("assets/image/card1.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 60, top: 140),
                        child: Column(
                          children: [
                            Text(
                              "Link your bank account",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Transfer to your cash to investment to meet",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                            Text(
                              "your goals",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 220),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(330, 50),
                            backgroundColor: Color.fromRGBO(0, 89, 231, 100),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add Card",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

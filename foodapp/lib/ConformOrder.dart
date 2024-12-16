import 'package:flutter/material.dart';

import 'myorder.dart';

class ConformOrder extends StatefulWidget {
  const ConformOrder({super.key});

  @override
  State<ConformOrder> createState() => _ConformOrderState();
}

class _ConformOrderState extends State<ConformOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(233, 145, 82, .90),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, left: 50),
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              margin: EdgeInsets.only(top: 25),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height + 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Shipping Address",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 308,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(233, 145, 82, .40),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45, left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Order Summery",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.normal),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(233, 145, 82, .40),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Divider(
                      color: Colors.orange,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Image.asset("assets/image/bonless.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Mutton bonless",
                                          style: TextStyle(fontSize: 19),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 50),
                                        child: Text(
                                          "₹ 770 / Kg",
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "9 Nov, 15:20 PM",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 110),
                                        child: Text(
                                          "2 item",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(233, 145, 82, .40),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Center(
                                          child: Text(
                                            "Cancel Order",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 50),
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.minimize,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.orange,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Image.asset("assets/image/bonless.png"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 80, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "Mutton bonless",
                                          style: TextStyle(fontSize: 19),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 50),
                                        child: Text(
                                          "₹ 770 / Kg",
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          "9 Nov, 15:20 PM",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 110),
                                        child: Text(
                                          "2 item",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(233, 145, 82, .40),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Center(
                                          child: Text(
                                            "Cancel Order",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.orange),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 50),
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Icon(
                                            Icons.minimize,
                                            size: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                            color: Colors.orange,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 20),
                                        width: 22,
                                        height: 22,
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
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
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Divider(
                      color: Colors.orange,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                "₹ 1500.00",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Tax and Fees",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                "₹ 150.00",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                "₹ 70.00",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Divider(
                          color: Color.fromRGBO(255, 222, 207, 100),
                          indent: 30,
                          endIndent: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 10),
                        child: Row(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                "₹ 1320.00",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyOrder(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 150,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(233, 145, 82, .40),
                      ),
                      child: Center(
                        child: Text(
                          "Place Order",
                          style: TextStyle(color: Colors.orange, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}

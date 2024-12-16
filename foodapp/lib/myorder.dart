import 'package:flutter/material.dart';

import 'location.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            Container(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Text(
                "My Order",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            PopupMenuButton(
              iconColor: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("home"),
                ),
                PopupMenuItem(
                  child: Text("setting"),
                ),
                PopupMenuItem(
                  child: Text("login"),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5, top: 20),
              child: Row(
                children: [
                  Image.asset(
                    "assets/image/icon.png",
                    color: Colors.orange,
                  ),
                  Container(
                    child: Text(
                      "Signed.",
                      style: TextStyle(color: Colors.orange, fontSize: 15),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Your order has been received and s...",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_sharp),
                      Text(
                        "456 Creative Lane San Francisco,CA 94102",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "United States",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Starry Sia  +1 (***) 555-1234",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dauphin Pastoureau",
                    style: TextStyle(
                        color: Color.fromRGBO(
                          0,
                          0,
                          0,
                          60,
                        ),
                        fontSize: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/image/chickenm.png"),
                        Container(
                          margin: EdgeInsets.only(top: 6, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Chicken Curry Cut pcs",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 6, left: 30),
                                    child: Text(
                                      "₹ 130.99",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "1Kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "Avocado oil 100ML *1 ",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(136, 136, 136, 100)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 120),
                    child: Row(
                      children: [
                        Container(
                          width: 109,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Color.fromRGBO(238, 238, 238, 100),
                            ),
                          ),
                          child: Center(
                            child: Text("Contact Seller"),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromRGBO(255, 235, 223, 100),
                          ),
                          child: Center(
                            child: Text(
                              "Refund",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/image/chickenn.png"),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Fresho Chicken Curry Cut",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 6, left: 20),
                              child: Text(
                                "₹ 140.99",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Without Skin,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          "200g *1",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(136, 136, 136, 100)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 120),
              child: Row(
                children: [
                  Container(
                    width: 109,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(238, 238, 238, 100),
                      ),
                    ),
                    child: Center(
                      child: Text("Contact Seller"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(255, 235, 223, 100),
                    ),
                    child: Center(
                      child: Text(
                        "Refund",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Row(
                      children: [
                        Text(
                          "Original Price",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "₹ 140.98",
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
                          "Use Coupon",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "₹ 20.20",
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
                          "Fee",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "₹ 10.04",
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
                          "Total",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "₹ 300.00",
                            style:
                                TextStyle(fontSize: 20, color: Colors.orange),
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
                          "Order ID",
                          style: TextStyle(
                              fontSize: 16, color: Color.fromRGBO(0, 0, 0, 40)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "35325565555788丨Copy",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 40),
                            ),
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
                          "Purchase time",
                          style: TextStyle(
                              fontSize: 16, color: Color.fromRGBO(0, 0, 0, 40)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "2024-03-04 12:40:52",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 40),
                            ),
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
                          "Payment time",
                          style: TextStyle(
                              fontSize: 16, color: Color.fromRGBO(0, 0, 0, 40)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "2024-03-05 12:42:00",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 40),
                            ),
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
                          "Shipping time",
                          style: TextStyle(
                              fontSize: 16, color: Color.fromRGBO(0, 0, 0, 40)),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Text(
                            "2024-03-06 12:40:52",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 40),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 120),
              child: Row(
                children: [
                  Container(
                    width: 134,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color.fromRGBO(238, 238, 238, 100),
                      ),
                    ),
                    child: Center(
                      child: Text("Track Shipment"),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Location(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange,
                      ),
                      child: Center(
                        child: Text(
                          "Confirm",
                          style: TextStyle(color: Colors.white),
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
    );
  }
}

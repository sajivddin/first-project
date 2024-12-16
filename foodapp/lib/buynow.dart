import 'package:flutter/material.dart';
import 'package:foodapp/loginscreen.dart';

class Buynow extends StatefulWidget {
  const Buynow({super.key});

  @override
  State<Buynow> createState() => _BuynowState();
}

class _BuynowState extends State<Buynow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(233, 145, 82, 43),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Container(
              width: 375,
              height: 211,
              decoration: BoxDecoration(
                color: Color.fromRGBO(241, 241, 241, 100),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5, top: 5),
                        width: 40,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 5, right: 5),
                        width: 40,
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(),
                    child: Image.asset(
                      "assets/image/image.png",
                      height: 135,
                      width: 135,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(137, 137, 137, 100),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(137, 137, 137, 100),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              width: 383,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 290),
                        width: 60,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(231, 231, 231, 100),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.orange,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chicken",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            Text(
                              "Rs. 394.00",
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 60),
                                  fontSize: 14),
                            ),
                            Text(
                              "Select Size",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        width: 67,
                        height: 61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(231, 231, 231, 100),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "1KG",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "Rs.395.00",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 10),
                        width: 67,
                        height: 61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(231, 231, 231, 100),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2.5KG",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "Rs.600.00",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 15),
                        width: 67,
                        height: 61,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromRGBO(231, 231, 231, 100),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4KG",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                            Text(
                              "Rs.900.00",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 50),
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Description",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Dry fruits are they yummiest food items that can boots"
                      " our fiber nutrient intake.It also contents a large"
                      "amount of antioxidants,which is why it is essential to include"
                      " various dry to fruits(as per your choice) in your diets chart.",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 375,
              height: 75,
              decoration: BoxDecoration(
                color: Color.fromRGBO(233, 145, 82, .90),
              ),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 260, top: 20),
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Buy Now",
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginscreen(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 160, top: 20),
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                          ),
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

import 'package:flutter/material.dart';
import 'package:foodapp/touch.dart';

class Area extends StatefulWidget {
  const Area({super.key});

  @override
  State<Area> get createState => _AreaState();
}

class _AreaState extends State<Area> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter your area or apartment name"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromRGBO(233, 145, 82, .30),
                hintText: "Search for groceries, veggies and more",
                hintStyle: TextStyle(
                  fontSize: 11,
                  color: Color.fromRGBO(124, 124, 124, 100),
                ),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.gps_fixed,
                    color: Colors.orange,
                  ),
                  hintText: "Use my current locations",
                  hintStyle: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.orange,
                  ),
                  hintText: "Add new address",
                  hintStyle: TextStyle(
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Saved addresses",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 50),
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Icon(
                    Icons.work_outline,
                    size: 30,
                    color: Color.fromRGBO(
                      120,
                      120,
                      120,
                      100,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Work",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(
                          120,
                          120,
                          120,
                          100,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  PopupMenuButton(
                    iconColor: Color.fromRGBO(
                      120,
                      120,
                      120,
                      100,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("settng"),
                      ),
                      PopupMenuItem(
                        child: Text("home"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text(
                    "79, Street 5, Uday Nagar, 200 Feet Bypass"
                    " Road, Jhotwara, Jaipur",
                    style: TextStyle(
                      color: Color.fromRGBO(
                        120,
                        120,
                        120,
                        100,
                      ),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 17),
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                    color: Color.fromRGBO(
                      120,
                      120,
                      120,
                      100,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Touch(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(
                            120,
                            120,
                            120,
                            100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  PopupMenuButton(
                    iconColor: Color.fromRGBO(
                      120,
                      120,
                      120,
                      100,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("settng"),
                      ),
                      PopupMenuItem(
                        child: Text("home"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text(
                    " Krishna Mall, 1, Tonk Rd, near Kendriya "
                    "Vidyalaya, Guatam Nagar, Gandhi Nagar,"
                    " Jaipur, Rajasthan 302015",
                    style: TextStyle(
                      color: Color.fromRGBO(
                        120,
                        120,
                        120,
                        100,
                      ),
                      fontSize: 16,
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

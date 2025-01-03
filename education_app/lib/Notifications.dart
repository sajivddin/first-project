import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications>  createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  color: Color.fromRGBO(32, 34, 68, .90),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 241, 255, 100),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.qr_code_sharp),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "New Category Course.!",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, .90),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "New the 3D Design Course is Availa..",
                            style: TextStyle(
                              color: Color.fromRGBO(84, 84, 84, 100),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 241, 255, 100),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(26, 67, 68, 100),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.wallet,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "New Category Course.!",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, .90),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "New the 3D Design Course is Availa..",
                            style: TextStyle(
                              color: Color.fromRGBO(84, 84, 84, 100),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 241, 255, 100),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/image/icon.png"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Today’s Special Offers",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, .90),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "You Have made a Coure Payment.",
                            style: TextStyle(
                              color: Color.fromRGBO(84, 84, 84, 100),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Yesterday",
                  style: TextStyle(
                    color: Color.fromRGBO(32, 34, 68, .90),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 241, 255, 100),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.wallet,
                        color: Color.fromRGBO(26, 67, 68, 100),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Credit Card Connected.!",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, .90),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Credit Card has been Linked.!",
                            style: TextStyle(
                              color: Color.fromRGBO(84, 84, 84, 100),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Nov 20, 2022",
                  style: TextStyle(
                    color: Color.fromRGBO(32, 34, 68, .90),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(232, 241, 255, 100),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.account_circle_outlined,
                        color: Color.fromRGBO(26, 67, 68, 100),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Account Setup Successful.!",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, .90),
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            "Your Account has been Created.",
                            style: TextStyle(
                              color: Color.fromRGBO(84, 84, 84, 100),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
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

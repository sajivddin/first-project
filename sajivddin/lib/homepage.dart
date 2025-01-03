import 'package:flutter/material.dart';

import 'accountcreate.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage>  createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 34, 64, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Center(
                child: Image.asset("assets/image/market.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, left: 10),
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(height: 5),
              Container(
                margin: EdgeInsets.only(top: 50, left: 10),
                child: Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 12),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Text(
                  "Password",
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(255, 255, 255, 0.1),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Accountcreate(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color.fromRGBO(255, 255, 255, 0.1),
                      height: 50,
                    ),
                  ),
                  Text(
                    " or sign in with ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color.fromRGBO(255, 255, 255, 0.1),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 44, 84, 100),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "G",
                          style: TextStyle(color: Colors.red, fontSize: 24),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(25, 44, 84, 100),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(24, 119, 242, 100),
                              shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              "f",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromRGBO(25, 44, 84, 100),
                      ),
                      child: Center(
                          child: Text(
                        "X",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't hava an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(color: Colors.blueAccent),
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

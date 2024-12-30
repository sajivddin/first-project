import 'package:flutter/material.dart';
import 'package:sajivddin/start.dart';

class Accountcreate extends StatefulWidget {
  const Accountcreate({super.key});

  @override
  State<Accountcreate> get createState => _AccountcreateState();
}

class _AccountcreateState extends State<Accountcreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              Image.asset("assets/image/market.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Create your account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      "Full Name",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Email Address",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
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
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
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
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Confirm password",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
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
                  SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width, 50),
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Start(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 53),
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
                        style: TextStyle(
                            color: const Color.fromARGB(255, 249, 246, 246)),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
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
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 53),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already hava an account?",
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
            ],
          ),
        ),
      ),
    );
  }
}

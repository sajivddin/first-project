import 'package:flutter/material.dart';
import 'package:foodapp/bottom.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> get createState => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Center(
                child: Container(
                  child: Image.asset("assets/image/Chicken.png"),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(240, 240, 240, 100),
                          hintText: "Enter your email address",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(13, 12, 56, 100),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: Row(
                        children: [
                          Text(
                            "Password:",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Text(
                              "Show",
                              style: TextStyle(
                                color: Color.fromRGBO(233, 145, 82, .90),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 13),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(240, 240, 240, 100),
                          hintText: ".....",
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(170, 170, 170, 100),
                            fontSize: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottom(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 35),
                    width: 324,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(233, 145, 82, .90),
                    ),
                    child: Center(
                      child: Text(
                        "Sign In Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 50),
                child: Column(
                  children: [
                    Text(
                      "Do not have any account yet?",
                      style: TextStyle(
                        color: Color.fromRGBO(233, 145, 82, .90),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Create Now",
                      style: TextStyle(
                        color: Color.fromRGBO(233, 145, 82, .90),
                        fontSize: 16,
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

import 'package:flutter/material.dart';
import 'package:foodapp/ProfileScreen.dart';
import 'package:foodapp/UploadProfile.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen>  createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("assets/image/color.png"),
            Image.asset("assets/image/Chicken.png"),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 13),
                    child: Text(
                      "Email Address:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(240, 240, 240, 100),
                        prefixIcon: Icon(Icons.email),
                        hintText: "Enter your email address",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(13, 12, 56, .30),
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
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 13),
                    child: Text(
                      "Password:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 13),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(240, 240, 240, 100),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(13, 12, 56, .30),
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
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                backgroundColor: Color.fromRGBO(233, 145, 82, .90),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadProfile(),
                  ),
                );
              },
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 200, top: 10),
              child: Text(
                "Forget Password?",
                style: TextStyle(
                  color: Color.fromRGBO(233, 145, 82, .90),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  Text(
                    "Signup",
                    style: TextStyle(
                      color: Color.fromRGBO(233, 145, 82, .90),
                      fontSize: 15,
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

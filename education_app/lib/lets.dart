import 'package:education_app/GettingStarted.dart';
import 'package:flutter/material.dart';

class Lets extends StatefulWidget {
  const Lets({super.key});

  @override
  State<Lets> get createState => _LetsState();
}

class _LetsState extends State<Lets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 300),
            Text(
              "Let’s you in",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 26, 78, 47),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 100),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/image/google.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 26, 78, 47),
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 100),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/image/apple.png"),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Continue with Apple",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 26, 78, 47),
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "( Or )",
                style: TextStyle(
                  color: Color.fromRGBO(0, 26, 78, 47),
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 26, 78, 47),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Sign In with Your Account",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GettingStarted(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 30),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an Account?",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 26, 78, 100),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 26, 78, 47),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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

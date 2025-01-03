import 'package:flutter/material.dart';

import 'VerifyForgetPassword.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword>  createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromRGBO(0, 26, 67, 100),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 300),
              child: Text(
                "Select which contact details should we use to",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 26, 78, 100),
                ),
              ),
            ),
            Text(
              " Reset Your Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 26, 78, 100),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(232, 241, 255, 100),
                      border: Border.all(
                        color: Color.fromRGBO(0, 26, 67, 100),
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.mail_outline,
                      color: Color.fromRGBO(0, 26, 67, 100),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "Via Email",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 67, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "priscilla.frank26@gmail.com",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 67, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(232, 241, 255, 100),
                      border: Border.all(
                        color: Color.fromRGBO(0, 26, 67, 100),
                        width: 2,
                      ),
                    ),
                    child: Icon(
                      Icons.mail_outline,
                      color: Color.fromRGBO(0, 26, 67, 100),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "Via SMS",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 67, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Text(
                          "( +91 ) 958-894-5529",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 26, 67, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerifyForgetPassword(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 40),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 26, 78, 47),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 120),
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 25,
                        color: Color.fromRGBO(0, 26, 78, 47),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

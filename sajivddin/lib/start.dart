import 'package:flutter/material.dart';
import 'package:sajivddin/next.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start>  createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100, left: 30),
                child: Text(
                  "Easiest way to start ",
                  style: TextStyle(color: Colors.white, fontSize: 34),
                ),
              ),
              Text(
                "investing",
                style: TextStyle(color: Colors.white, fontSize: 34),
              ),
              Container(
                margin: EdgeInsets.only(top: 84),
                child: Image.asset("assets/image/pana.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 150),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    backgroundColor: Color.fromRGBO(0, 89, 231, 100),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Next(),
                      ),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

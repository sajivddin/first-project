import 'package:flutter/material.dart';
import 'package:sajivddin/next5.dart';

class Next4 extends StatefulWidget {
  const Next4({super.key});

  @override
  State<Next4> createState() => _Next4State();
}

class _Next4State extends State<Next4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/image/group.png"),
              Container(
                margin: EdgeInsets.only(top: 66),
                child: Column(
                  children: [
                    Text(
                      "How often do you trade?",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tells us financial priorities personalize your",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    Text(
                      "experience.",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        // color: Color.fromRGBO(0, 89, 231, 100),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(0, 89, 231, 100),
                            Color.fromRGBO(7, 54, 132, 100),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Daily",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      width: 80,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(25, 44, 84, 100),
                      ),
                      child: Center(
                        child: Text(
                          "Weekly",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      width: 80,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(25, 44, 84, 100),
                      ),
                      child: Center(
                        child: Text(
                          "Monthly",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      width: 80,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromRGBO(25, 44, 84, 100),
                      ),
                      child: Center(
                        child: Text(
                          "Rarely",
                          style: TextStyle(
                              color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 187,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(25, 44, 84, 100),
                ),
                child: Center(
                  child: Text(
                    "only on Markets Events",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 96),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 96,
                        height: 44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: Color.fromRGBO(255, 255, 255, 50),
                            width: 1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 50),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 100),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 3),
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 255, 255, 100),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Next5(),
                          ),
                        );
                      },
                      child: Container(
                        width: 96,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 89, 231, 50),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 50),
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
      ),
    );
  }
}

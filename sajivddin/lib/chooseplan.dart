import 'package:flutter/material.dart';
import 'package:sajivddin/CurrentPlan.dart';

class Chooseplan extends StatefulWidget {
  const Chooseplan({super.key});

  @override
  State<Chooseplan> get createState => _ChooseplanState();
}

class _ChooseplanState extends State<Chooseplan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(17, 34, 64, 100),
        title: Container(
          margin: EdgeInsets.only(left: 40),
          child: Text(
            "Choose your plan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/image/amico.png"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Currentplan(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 360,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(0, 89, 231, 100),
                        Color.fromRGBO(7, 54, 132, 100),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            child: Text(
                              "Yearly Plan",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20, top: 20),
                            width: 80,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                "Best value",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 270),
                        child: Text(
                          "\$100/yr",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Feature one will go here",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$200",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 50),
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Text(
                                    ".50%off",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Feature one will go here",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/image/done.png",
                                  color: Colors.white,
                                ),
                                Text(
                                  "Feature one will go here",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 360,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(25, 44, 84, 100),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Quarterly Plan",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 270),
                      child: Text(
                        "\$100/yr",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/done.png",
                                color: Colors.white,
                              ),
                              Text(
                                "Feature one will go here",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/done.png",
                                color: Colors.white,
                              ),
                              Text(
                                "Feature one will go here",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/done.png",
                                color: Colors.white,
                              ),
                              Text(
                                "Feature one will go here",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 90),
                width: 360,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 89, 231, 100),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Continue to purchase",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

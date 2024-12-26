import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> get createState => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isCheck = false;
  bool Check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Filter",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Clear",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SubCategories:",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromRGBO(32, 34, 68, 100),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      "3D Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: Check,
                      onChanged: (value) {
                        setState(() {
                          Check = value!;
                        });
                      },
                    ),
                    Text(
                      "Web Development",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: Check,
                      onChanged: (value) {
                        setState(() {
                          Check = value!;
                        });
                      },
                    ),
                    Text(
                      "3D Animation",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      "Graphic Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      "SEO & Marketing",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value!;
                        });
                      },
                    ),
                    Text(
                      "Arts & Humanities",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(32, 34, 68, 80),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Levels:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(32, 34, 68, 100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "All Levels",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: Check,
                          onChanged: (value) {
                            setState(() {
                              Check = value!;
                            });
                          },
                        ),
                        Text(
                          "Beginners",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: Check,
                          onChanged: (value) {
                            setState(() {
                              Check = value!;
                            });
                          },
                        ),
                        Text(
                          "Intermediate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "Expert",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(32, 34, 68, 100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: Check,
                          onChanged: (value) {
                            setState(() {
                              Check = value!;
                            });
                          },
                        ),
                        Text(
                          "Paid",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Features:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(32, 34, 68, 100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "All Captian",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "Quizzes",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "Coding Exercise",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "Practice Tests",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rating:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(32, 34, 68, 100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "4.5 & Up Above",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "4.0 & Up Above",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "3.5 & Up Above",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "3.0 & Up Above",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Video Durations:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color.fromRGBO(32, 34, 68, 100),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "0-2 Hours",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "3-6 Hours",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "7-16 Hours",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value!;
                            });
                          },
                        ),
                        Text(
                          "17+ Hours",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(32, 34, 68, 80),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(26, 67, 78, 47),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 130),
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 95),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Color.fromRGBO(26, 67, 78, 47),
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

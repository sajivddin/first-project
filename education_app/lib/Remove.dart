import 'package:flutter/material.dart';

class Remove extends StatefulWidget {
  @override
  _RemoveState get createState => _RemoveState();
}

class _RemoveState extends State<Remove> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 0),
      () => ShowBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32, 34, 64, 68),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(32, 34, 64, 68),
        title: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }

  ShowBottomSheet() {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      builder: (context) {
        return Container(
          height: 350,
          width: 428,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35),
                    child: Text(
                      "Remove From Bookmark?",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10, top: 5),
                              child: Text(
                                "Graphic Design",
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(left: 10, top: 5, right: 5),
                              child: Icon(
                                Icons.bookmark,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            "Advertisement Design",
                            style: TextStyle(
                              color: Color.fromRGBO(0, 26, 78, 47),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 10),
                          child: Text(
                            "899/-",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, top: 10),
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.orange, size: 16),
                              const SizedBox(width: 4),
                              Text('3.9'),
                              const SizedBox(width: 8),
                              Text('|'),
                              const SizedBox(width: 8),
                              Text('12680 Std'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(232, 241, 255, 100),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Text(
                          " Cancel",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 180,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 26, 67, 47),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Yes, Remove",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 48,
                            height: 58,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:education_app/Hii.dart';
import 'package:flutter/material.dart';

class SetFinger extends StatefulWidget {
  const SetFinger({super.key});

  @override
  State<SetFinger> get createState => _SetFingerState();
}

class _SetFingerState extends State<SetFinger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Set Your Fingerprint",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromRGBO(0, 26, 67, 100),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "Add a Fingerprint to Make your Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 26, 67, 100),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                " more Secure",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 26, 67, 100),
                ),
                textAlign: TextAlign.center,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Stack(
                    children: [
                      Image.asset("assets/image/fill.png"),
                      Positioned(
                        left: 50,
                        top: 50,
                        child: GestureDetector(
                          onTap: () {
                            Future.delayed(
                              Duration(seconds: 3),
                              () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HiJuned(),
                                  ),
                                );
                              },
                            );
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Container(
                                    width: 280,
                                    height: 400,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: Image.asset(
                                              "assets/image/image.png"),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 30),
                                          child: Text(
                                            "Congratulations",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color.fromRGBO(
                                                  32, 34, 68, 100),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                              top: 12, left: 10),
                                          child: Text(
                                            "Your Account is Ready to Use. You will be "
                                            "redirected to the Home Page in a Few"
                                            " Seconds.",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 20),
                                          child: CircularProgressIndicator(),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.fingerprint,
                            size: 140,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Text(
                      "Please Put Your Finger on the Fingerprint",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 26, 67, 100),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Scanner to get Started.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color.fromRGBO(0, 26, 67, 100),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Container(
                      width: 130,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Color.fromRGBO(26, 67, 78, 100),
                          width: 2,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Center(
                          child: Text(
                            "Skip",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 26, 67, 100),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        width: 260,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 26, 78, 47),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 40),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 35),
                              width: 48,
                              height: 48,
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
            ],
          ),
        ),
      ),
    );
  }
}

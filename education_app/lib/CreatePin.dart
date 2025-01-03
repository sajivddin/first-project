import 'package:flutter/material.dart';

import 'SetFinger.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({super.key});

  @override
  State<CreatePin>  createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  List<String> pin = ["", "", "", ""];
  int currentIndex = 0;

  void onNumberPress(String number) {
    if (currentIndex < 4)
      setState(() {
        pin[currentIndex] = number;
        currentIndex++;
      });
  }

  void onDeletePress() {
    if (currentIndex > 0)
      setState(() {
        currentIndex--;
        pin[currentIndex] = "";
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create New Pin",
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
                "Add a Pin Number to Make Your Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 26, 67, 100),
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "more Secure",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 26, 67, 100),
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  4,
                  (index) => Container(
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 100),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      pin[index].isEmpty ? "" : pin[index],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: pin[index].isEmpty ? Colors.grey : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: currentIndex == 4
                    ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SetFinger(),
                          ),
                        );
                      }
                    : null,
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 26, 78, 47),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 130),
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
              SizedBox(height: 50),
              Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 60,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 9) {
                        return SizedBox.shrink();
                      } else if (index == 11) {
                        return GestureDetector(
                          onTap: onDeletePress,
                          child: Icon(Icons.backspace),
                        );
                      } else {
                        String number =
                            (index == 10 ? 0 : index + 1).toString();
                        return GestureDetector(
                          onTap: () => onNumberPress(number),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              number,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

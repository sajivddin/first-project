import 'package:education_app/CreateNewPassword.dart';
import 'package:flutter/material.dart';

class VerifyForgetPassword extends StatefulWidget {
  const VerifyForgetPassword({super.key});

  @override
  State<VerifyForgetPassword>  createState() => _VerifyForgetPassword();
}

class _VerifyForgetPassword extends State<VerifyForgetPassword> {
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
          "Forgot Password",
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
              SizedBox(height: 80),
              Text(
                "Code has been Send to ( +1 ) ***-***-*529",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color.fromRGBO(0, 26, 67, 100),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
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
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text(
                  "Resend Code in 59s",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(0, 26, 78, 47),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              InkWell(
                onTap: currentIndex == 4 ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateNewPassword(),
                    ),
                  );
                } : null,
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
                        margin: EdgeInsets.only(left: 140),
                        child: Text(
                          "Verify",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 100),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

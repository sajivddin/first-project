import 'package:education_app/LearnFromAny.dart';
import 'package:education_app/lets.dart';
import 'package:flutter/material.dart';

class OnlineLearning extends StatefulWidget {
  const OnlineLearning({super.key});

  @override
  State<OnlineLearning>  createState() => _OnlineLearningState();
}

class _OnlineLearningState extends State<OnlineLearning> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Lets(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Color.fromRGBO(26, 67, 78, 47),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(
                  () {
                    // currentIndex = index;
                  },
                );
              },
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Online Learning',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(26, 67, 78, 47),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'We Provide Classes Online Classes and Pre Recorded Lectures.!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(26, 67, 78, 100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? Color.fromRGBO(26, 67, 78, 47)
                              : Color.fromRGBO(26, 67, 78, 100)),
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(26, 67, 78, 47),
                  onPressed: () {
                    // if (currentIndex < 2) {
                    //   setState(() {
                    //     currentIndex++;
                    //   });
                    // } else {
                    //
                    // }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LearnFromAny(),
                        ));
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'PaymentMethod.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({super.key});

  @override
  State<WriteReview> get createState => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Write a Reviews",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                width: 360,
                height: 134,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Graphic Design",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Setup your Graphic Desig..",
                            style: TextStyle(
                              color: Color.fromRGBO(32, 34, 64, 47),
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Add Photo (or) Video",
                style: TextStyle(
                  color: Color.fromRGBO(32, 34, 64, 47),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Card(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 360,
                height: 134,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image/wheather.png"),
                    GestureDetector(
                      onTap: _pickImageFromGallery,
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          "Click here to Upload",
                          style: TextStyle(
                            color: Color.fromRGBO(32, 34, 64, 47),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                "Write you Review",
                style: TextStyle(
                    color: Color.fromRGBO(32, 34, 64, 47),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Card(
              child: TextField(
                maxLines: 8,
                decoration: InputDecoration(
                  hintText:
                      "Would you like to write anything about this Product?",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(180, 189, 196, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  alignLabelWithHint: true,
                ),
              ),
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentMethod(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 26, 67, 47),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      child: Text(
                        "Submit Review",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.arrow_forward),
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

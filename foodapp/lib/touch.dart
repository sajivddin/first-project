import 'package:flutter/material.dart';
import 'package:foodapp/account.dart';

class Touch extends StatefulWidget {
  const Touch({super.key});

  @override
  State<Touch>  createState() => _TouchState();
}

class _TouchState extends State<Touch> {
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Get in touch",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(233, 145, 82, .90),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Enim tempor eget pharetra facilisis sed "
                    "maecenas adipiscing. Eu leo molestie vel,"
                    " ornare non id blandit netus.",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 100),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Contact Name",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Street",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "City",
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "PostCode",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Contact Phone",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail",
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Let's talk about your idea",
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 60,
                  margin: EdgeInsets.only(top: 40, left: 40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey, // Border color
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.file_upload_outlined, // Upload icon
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Upload Additional file",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Attach file. File size of your documents should not exceed 10MB",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 100),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: ischeck,
                        onChanged: (bool? value) {
                          setState(
                            () {
                              ischeck = value ?? false; // Update checkbox state
                            },
                          );
                        },
                      ),
                      Text("I want to protect my data by signing an NDA"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(300, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Account(),
                        ),
                      );
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_in_talk_outlined,
                        size: 27,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "Phone",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "111 111",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.mail,
                        size: 27,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "E-mail",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "info@company.com",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 10),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.mail_outline_outlined,
                        size: 27,
                        color: Colors.black,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "HELPDESK",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4),
                            child: Text(
                              "https://helpdesk.com",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 10),
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
      ),
    );
  }
}

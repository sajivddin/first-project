import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> get createState => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  List<bool> _selectedItems = List.generate(4, (index) => false);
  List myList = [
    {
      'name': 'Paypal',
    },
    {
      'name': 'Google Pay',
    },
    {
      'name': 'Apple Pay',
    },
    {
      'name': '**** ****  **76  3054',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Methods",
          style: TextStyle(
              color: Color.fromRGBO(32, 34, 64, 47),
              fontSize: 21,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: Container(
              margin: EdgeInsets.only(top: 20),
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
              "Select the Payment Methods you Want to Use",
              style: TextStyle(
                color: Color.fromRGBO(84, 84, 84, 10),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      margin: EdgeInsets.only(top: 15),
                      child: Container(
                        width: 350,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text(
                                myList[index]['name'],
                                style: TextStyle(
                                    color: Color.fromRGBO(32, 34, 64, 47),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedItems[index] =
                                      !_selectedItems[index];
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: _selectedItems[index]
                                      ? Color.fromRGBO(26, 67, 78, 47)
                                      : null,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color.fromRGBO(180, 189, 190, 100),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 360,
                      height: 440,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Image.asset("assets/image/correct.png"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Congratulations",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(32, 34, 68, 100),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              "\nYour Payment is Successfully.Purchase"
                              "\na New Course",
                              style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 100),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              "Watch the Course",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            width: 206,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 26, 67, 47),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 30),
                                  child: Text(
                                    "E - Receipt",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Color.fromRGBO(0, 26, 67, 47),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
                    margin: EdgeInsets.only(left: 60),
                    child: Text(
                      "Enroll Course - \$55",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
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
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 60,
            right: 5,
            child: FloatingActionButton(
              backgroundColor: Color.fromRGBO(0, 26, 67, 47),
              onPressed: () {},
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

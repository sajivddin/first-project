import 'package:flutter/material.dart';

class Faqs extends StatefulWidget {
  const Faqs({super.key});

  @override
  State<Faqs>  createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset("assets/image/food.png"),
          ),
        ),
        leadingWidth: 80,
        title: Text(
          "FAQS",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Text(
              "How do I place an order?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "You can place an order directly through our mobile app or"
                " website by selecting your preferred items and proceeding to"
                " checkout.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "What is the refund policy?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Our refund policy can be found in the Cancellation & Refund"
                "Policy section. Please review it before requesting any refunds.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "How can I track my delivery?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "Once your order is confirmed, you can track the status of your"
                "delivery through the app’s real-time tracking feature.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "What if I face issues with the app?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Text(
                "For any technical issues, please refer to our Help section or"
                " contact our support team.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

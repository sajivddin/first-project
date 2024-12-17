import 'package:flutter/material.dart';

class Termsofuse extends StatelessWidget {
  const Termsofuse({super.key});

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
          "Terms And Conditions",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "This document is an electronic record in terms of Information"
                  " Technology Act, 2000 and rules there under as applicable and "
                  "the amended provisions pertaining to electronic records in "
                  "various statutes as amended by the Information Technology"
                  " Act, 2000. This document is published in accordance with the "
                  "provisions of Rule 3 (1) of the Information "
                  "Technology(Guidelines for Intermediaries and Digital Media"
                  " Ethics Code) Rules, 2021 that require publishing the rules and"
                  " regulations, privacy policy and Terms of Use for access or usage "
                  "of www.foodie.com website and Foodie application for mobile and handheld devices.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "1. Terms of Use",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "These terms of use (the Terms of Use) and other policies"
                  " (including but not limited to the Cancellation & Refund Policy, "
                  "Privacy Policy and Take Down Policy) govern your use of our "
                  "website www.foodie.com (the Website) and our Foodie application for "
                  "mobile and handheld devices (the App). The Website and the App are jointly "
                  "referred to as the Platform. Please read these Terms of Use carefully"
                  " before you use the services. If you do not agree to these Terms of Use,"
                  " you may not use the services on the Platform, and we request you to "
                  "uninstall the App. By installing, downloading or even merely using the "
                  "Platform, you shall be contracting with Foodie and you signify your"
                  " acceptance to this Terms of Use and other Foodie policies (including "
                  "but not limited to the Cancellation & Refund Policy, Privacy Policy and "
                  "Take Down Policy) as posted on the Platform and amended from time to time,"
                  " which takes effect on the date on which you download, install or use the "
                  "Platform, and create a legally binding arrangement to abide by the same.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "The Platform is owned and operated by Foodie Limited, a company incorporated under the laws"
                  " of India and having its registered office at No.55, Sy No.8-14, Ground Floor, I&J Block, "
                  "Embassy Tech Village, Outer Ring Road, Devarbisanahalli, Bengaluru – 560103, Karnataka, "
                  "India. For the purpose of these Terms of Use, wherever the context so requires, you, "
                  "“user”, or “User” shall mean any natural or legal person who shall transact on the "
                  "Platform by providing registration data during registration on the Platform as a"
                  " registered user using any computer systems. The terms Foodie, we, us or our shall mean "
                  "Foodie Limited.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Foodie enables delivery of such Orders or completion of Tasks at select localities of serviceable"
                  " cities across India (Delivery Services) by connecting third party service providers i.e. pick-up"
                  " and delivery partners (“PDP/s”) who will be responsible for providing the pick-up and delivery"
                  " services and completing the Tasks initiated by the users of the Platform i.e., Buyers or Merchants)"
                  ". The Platform Services and Delivery Services are collectively referred to as Services. For both"
                  " Platform Services and Delivery Services, Foodie is merely acting as an intermediary between the "
                  "Merchant and the Buyers and/or PDPs and Buyers/Merchants.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "PDPs are individual entrepreneurs engaged with Foodie on voluntary, non-exclusive and principal to principal"
                  " basis to provide aforementioned services for service fee. PDPs are independent contractors and are free "
                  "to determine their timings of work. Foodie does not exercise control on the PDPs and the relationship "
                  "between the PDPs and Foodie is not that of an agent and principal or employee and employer.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "For the pickup and delivery services and completing the Tasks, PDPs may charge the users of the Platform"
                  " (Buyers or Merchants), a service fee (inclusive of applicable taxes whenever not expressly mentioned)"
                  " determined on the basis of various factors including but not limited to distance covered, time taken, "
                  "demand for Delivery Services/Tasks, real time analysis of traffic and weather conditions, seasonal peaks"
                  " or such other parameters as may be determined from time to time.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "2. Account Registration And Eligibility",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "2.1. Access to the Platform",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "You may gain access the Platform by (i) registering to create an account (Foodie Account) and becom a member "
                  "(Membership); or(ii) by registering to join by logging into your account with certain third party "
                  "social networking sites ( SNS) (including, but not limited to, Facebook); each such account, a third "
                  "Party Account via our Platform, as described below. The Membership is limited for the purpose, are"
                  " subject to the Foodie Policies, and strictly not transferable.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "As part of the functionality of the Platform services, you may link your Foodie Account with"
                  " Third Party Accounts, by either:",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "(i) providing your Third Party Account login information to us through the Platform; or",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "(ii) allowing us to access your Third Party Account, as is permitted under the applicable"
                      " terms and conditions that govern your use of each Third Party Account.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "You represent that you are entitled to disclose your Third Party Account login information to"
                      " us and/or grant us access to your Third Party Account (including, but not limited tofor "
                      "the purposes described herein), without breach by you of any of the terms and conditions"
                      " that govern your use of the applicable Third Party Account and without obligating us to "
                      "pay any fees or making us subject to any usage limitations imposed by such SNS.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "By granting us access to any Third Party Account, you understand that we will access, make"
                      " available and store (if applicable) any content or information that you may have provided "
                      "to and stored in your Third Party Account (SNS Content) such that it is available on the"
                      " Platform via your Foodie Account",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

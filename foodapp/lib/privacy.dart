import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

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
          "Privacy Policy",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                "How do I place an order?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black45,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "This Privacy Policy (“Policy”) describes the policies and procedures on the collection, use,"
                  " disclosure and protection of your information when you use our website located at foodie.com, "
                  "or the Foodie mobile application (collectively, “Foodie Platform”) made available by Foodie "
                  "Limited (“Foodie”, “Company”, “we”, “us” and “our”),  a public company established under the"
                  " laws of India having its registered office at No.55 Sy No.8-14, Ground Floor, I&J Block, "
                  "Embassy Tech Village, Outer Ring Road, Devarbisanahalli, Bengaluru - 560103",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "The terms “you” and “your” refer to the user of the Foodie Platform. The term “Services” refers to"
                  " any services offered by Foodie whether on the Foodie Platform or otherwise.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Please read this Policy before using the Foodie Platform or submitting any personal information to Foodie. "
                  "This Policy is a part of and incorporated within, and is to be read along with, the Terms of Use.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Your Consent",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "By using the Foodie Platform and the Services, you agree and consent to the collection, transfer, use, storage, "
                  "disclosure and sharing of your information as described and collected by us in accordance with"
                  " this Policy.  If you do not agree with the Policy, please do not use or access the Foodie "
                  "Platform.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "POLICY CHANGES",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "We may occasionally update this Policy and such changes will be posted on this page. If we make "
                  "any significant changes to this Policy we will endeavour to provide you with reasonable "
                  "notice of such changes, such as via prominent notice on the Foodie Platform or to your "
                  "email address on record and where required by applicable law, we will obtain your consent."
                  " To the extent permitted under the applicable law, your continued use of our Services after"
                  " we publish or send a notice about our changes to this Policy shall constitute your consent "
                  "to the updated Policy.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "LINKS TO OTHER WEBSITES",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "The Foodie Platform may contain links to other websites. Any personal information about you "
                  "collected whilst visiting such websites is not governed by this Policy. Foodie shall not be"
                  " responsible for and has no control over the practices and content of any website accessed "
                  "using the links contained on the Foodie Platform. This Policy shall not apply to any "
                  "information you may disclose to any of our service providers/service personnel which we do "
                  "not require you to disclose to us or any of our service providers under this Policy.",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "INFORMATION WE COLLECT FROM YOU",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Device Information: In order to improve your app experience and lend stability to our services"
                  " to you, we may collect information or employ third party plugins that collect information "
                  "about the devices you use to access our Services, including the hardware models, operating "
                  "systems and versions, software, file names and versions, preferred languages, unique device"
                  " identifiers, advertising identifiers, serial numbers, device motion information, mobile "
                  "network information, installed applications on device and phone state. The information"
                  " collected thus will be disclosed to or collected directly by these plugins and may be used "
                  "to improve the content and/or functionality of the services offered to you. Analytics "
                  "companies may use mobile device IDs to track your usage of the Foodie Platform;",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Cookies",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Our Foodie Platform and third parties with whom we partner, may use cookies, pixel tags, web"
                  " beacons, mobile device IDs, “flash cookies” and similar files or technologies to collect "
                  "and store information with respect to your use of the Services and third-party websites.",
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

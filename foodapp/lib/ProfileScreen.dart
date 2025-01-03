import 'package:flutter/material.dart';
import 'package:foodapp/touch.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen>  createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Are you sure you want to log out?',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text('Yes, logout'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Touch(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/image/profileimage.png"),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Smith',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Loremipsum@email.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  profileOption('My Orders', Icons.shopping_bag),
                  profileOption('My Profile', Icons.person),
                  profileOption('Delivery Address', Icons.location_on),
                  profileOption('Payment Methods', Icons.payment),
                  profileOption('Contact Us', Icons.phone),
                  profileOption('Help & FAQs', Icons.help),
                  profileOption('Settings', Icons.settings),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text(
                      'Log Out',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () => showLogoutDialog(context),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget profileOption(String title, IconData icon) {
  return ListTile(
    leading: Icon(icon, color: Colors.white),
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    onTap: () {
      // Add navigation or functionality here
    },
  );
}

import 'package:figma_first_project/bookmark_page.dart';
import 'package:figma_first_project/home_page.dart';
import 'package:figma_first_project/invite_friends_page.dart';
import 'package:figma_first_project/login_page.dart';
import 'package:figma_first_project/notification_page.dart';
import 'package:figma_first_project/payment_method_page.dart';
import 'package:figma_first_project/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ));
            },
            child: Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/images/MyPic.jpg',
                  ),
                ),
                title: Text(
                  'Asim Hanif',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  'Profile',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: CircleAvatar(
                    backgroundColor: Colors.black12,
                    child: Image.asset('assets/images/Stroke1.png')),
              ),
            ),
          ),
          Divider(
            height: 60,
            indent: 25,
            endIndent: 45,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.bookmark_border,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookmarkPage(),
                        ));
                  },
                  child: Text(
                    'Bookmarks',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.assignment_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Orders',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.payment_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentMethodPage(),
                        ));
                  },
                  child: Text(
                    'Payment Methods',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotificationPage(),
                        ));
                  },
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.person_add_alt_1_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InviteFriendsPage(),
                        ));
                  },
                  child: Text(
                    'Refers to Friends',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.info_outline,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'About us',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 70,
            indent: 20,
            endIndent: 170,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Icon(
                  Icons.exit_to_app_outlined,
                  size: 35,
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actions: [
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('No')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ));
                                    },
                                    child: Text('Yes')),
                              ],
                            ),
                          ],
                          title: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey.shade200,
                            child: Image.asset(
                              'assets/images/Group 8.png',
                              // color: Colors.black,
                            ),
                          ),
                          content: Text(
                            'Are you sure you want to log out?',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Sign Out',
                    style: TextStyle(
                      fontSize: 18,
                    ),
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

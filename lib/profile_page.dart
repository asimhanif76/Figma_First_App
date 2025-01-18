import 'package:figma_first_project/menu_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuPage(),
                          ));
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Edit',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.all(30),
            // width: 70,
            // height: 70,
            child: const Stack(children: [
              CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/images/MyPic.jpg',
                  )),
            ]),
          ),
          Divider(
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 25, top: 40),
            alignment: Alignment.topLeft,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FIRST NAME",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Asim Hanif',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "EMAIL",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'asimhanif@gmail.com',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "MOBILE",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  '+92307-7631772',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "LOCATION",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Pakistan',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

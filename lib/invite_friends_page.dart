import 'package:figma_first_project/menu_page.dart';
import 'package:flutter/material.dart';

class InviteFriendsPage extends StatelessWidget {
  const InviteFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MenuPage(),
                        ));
                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
              SizedBox(
                width: 75,
              ),
              Text(
                'Invite Your Friends',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey,
            margin: EdgeInsets.only(top: 50),
            height: 320,
            child: Image.asset('assets/images/Illustration.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  "Invite your Friends, Get \$5",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text(
                    "Earn a \$5 Credit when your referred \n    friend uses your personal code.")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Invite link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 350,
            height: 50,
            child: TextField(
              // showCursor: null,

              decoration: InputDecoration(
                  fillColor: Color.fromARGB(31, 81, 77, 77),
                  filled: true,
                  hintText: 'https://mobbin.design/apps/shop-ios',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  suffixIcon: Icon(Icons.content_copy_sharp)),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            child: const Center(
              child: Text(
                'Invite A Friends',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

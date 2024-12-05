import 'package:figma_first_project/menu_page.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                width: 102,
              ),
              Text(
                'Notifications',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey,
            margin: EdgeInsets.only(top: 100),
            height: 320,
            child: Image.asset('assets/images/Notifications.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  'Oops!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text("You did't get any Notifcations Yet")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

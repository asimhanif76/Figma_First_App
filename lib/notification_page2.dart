import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationPage2 extends StatelessWidget {
  const NotificationPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          appbar(),
        ],
      ),
    );
  }

  Widget appbar() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 125),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios_new_outlined),
                Text(
                  'Notifications',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Divider(
            height: 10,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20, top: 18),
            alignment: Alignment.centerLeft,
            child: Text(
              'What do you recommend for this product ?',
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:figma_first_project/menu_page.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
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
              const SizedBox(
                width: 102,
              ),
              Text(
                'Bookmarks',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Divider(),
          Container(
            // color: Colors.blueGrey,
            margin: EdgeInsets.only(top: 100),
            height: 320,
            child: Image.asset('assets/images/Bookmarks.png'),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Text(
                  'Oops!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                Text("You've Not Added Any Bookmarks")
              ],
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.black),
            child: Center(
              child: Text(
                'Add Bookmarks',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

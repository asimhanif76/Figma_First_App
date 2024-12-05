import 'package:figma_first_project/add_new_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmptyCardPage extends StatelessWidget {
  const EmptyCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuey = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: _mediaQuey.size.height * 0.1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 115),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined),
                      Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 10,
                  indent: 20,
                  endIndent: 20,
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: _mediaQuey.size.height * 0.35,
            child: Image.asset('assets/images/Illustration1.png'),
          ),
          Container(
            alignment: Alignment.center,
            height: _mediaQuey.size.height * 0.45,
            width: _mediaQuey.size.width * 0.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have any card',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'It’s seems like you don’t added any credit cards yet. To make transaction please add the card. ',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Container(
            // height: _mediaQuey.size.height * 0.1,
            color: Colors.white,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddNewCard(),
                    ));
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    'Add Credit Card',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

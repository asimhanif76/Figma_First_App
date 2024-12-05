import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage2 extends StatelessWidget {
  SignupPage2({super.key});

  TextStyle Mycolor = TextStyle(color: Colors.grey, fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image624.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: [
              SizedBox(
                height: 202.9,
              ),
              Container(
                width: double.infinity,
                height: 632,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        'We just need some\nmore information',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'FIRST NAME',
                        style: Mycolor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Asim '),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'LAST NAME',
                        style: Mycolor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Hanif'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'COUNTRY',
                        style: Mycolor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Pakistan'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'PHONE NUMBER',
                        style: Mycolor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: '+0123456789'),
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 8, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'WHAT DO YOU WANT TO BUY',
                        style: Mycolor,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Shoes'),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    SizedBox(
                      height: 56,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

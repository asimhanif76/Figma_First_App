import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Image1.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 380,
              ),
              Center(
                child: Container(
                  child: Text(
                    'Choose Smart Shoes',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Choose the most attractive",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "shoes for you",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),

              SizedBox(
                height: 52,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}

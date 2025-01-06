import 'package:figma_first_project/login_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Image3.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 470,
              ),
              Center(
                child: Container(
                  child: Text(
                    "Let's go to the store ",
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
                    "We are providing the best services to",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "the customer",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
SizedBox(
                height: 142,
              ),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
              },
              child: Container(
                alignment: Alignment.center,
                width: 355,
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepOrangeAccent,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

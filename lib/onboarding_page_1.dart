import 'package:flutter/material.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Image.png',
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
                    'Welcome To Buy Me',
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
                    "Let's choose the best shoes \n                 from here",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      children: [
                    TextSpan(text: '1/'),
                    TextSpan(
                        text: '3',
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18))
                  ])),
              SizedBox(
                height: 24,
              ),
              // RichText(
              //     text: TextSpan(children: [
              //   TextSpan(
              //       text: '<  ',
              //       style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 24,
              //           fontWeight: FontWeight.w700)),
              //   TextSpan(
              //     text: '|',
              //     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              //   ),
              //   TextSpan(
              //       text: ' . .',
              //       style: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 25,
              //           fontWeight: FontWeight.w900)),
              //   TextSpan(
              //     text: '  >',
              //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              //   )
              // ]))
            ],
          ),
        ],
      ),
    );
  }
}

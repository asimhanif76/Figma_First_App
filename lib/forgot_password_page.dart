import 'package:figma_first_project/verification_page.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 202.9,
                ),
                Container(
                  height: 632,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 28, left: 20),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Don't worry. Please send your email.",
                            style: TextStyle(fontSize: 16),
                          )),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 70, left: 20),
                        child: Text(
                          'EMAIL',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                            decoration: InputDecoration(
                          hintText: 'hello@halallab.co',
                          fillColor: Colors.lightBlueAccent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                        )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Send Code',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w600),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return VerificationPage();
                                  },
                                ));
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                child: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ), // Container Column....
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

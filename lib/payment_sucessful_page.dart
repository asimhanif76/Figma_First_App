import 'package:figma_first_project/home_page.dart';
import 'package:flutter/material.dart';

class PaymentSucessfulPage extends StatelessWidget {
  const PaymentSucessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 750,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.lightGreen.shade400,
                      child: Icon(
                        Icons.check_sharp,
                        color: Colors.white,
                        size: 70,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Sucessful",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text("Your Order Placed Sucessfully!"),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Center(
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

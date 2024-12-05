import 'package:figma_first_project/payment_method_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentFailedPage extends StatelessWidget {
  const PaymentFailedPage({super.key});

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
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.not_interested_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Payment Failed!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        textAlign: TextAlign.center,
                        "Don’t worry. Somthing went wrong with your payment method, please review and try another way."),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentMethodPage(),
                    ));
              },
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PaymentMethodPage(),
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
                      'Review Payment',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
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

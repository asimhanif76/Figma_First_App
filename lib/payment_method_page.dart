import 'package:figma_first_project/empty_card_page.dart';
import 'package:figma_first_project/payment_failed_page.dart';
import 'package:figma_first_project/payment_sucessful_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentMethodPage extends StatefulWidget {
  PaymentMethodPage(
      // this.
      );
  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int? selectIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [appbar(), cardbuilder(), addconfirmcontainer()],
      ),
    );
  }

  Widget addconfirmcontainer() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EmptyCardPage(),
                  ));
            },
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                  child: Text(
                '+Add new Card',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 175, left: 20, right: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => selectIndex == null
                        ? PaymentFailedPage()
                        : PaymentSucessfulPage(),
                  ));
            },
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  'Confirm Payment',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget cardbuilder() {
    var cardName = [
      'Mastercard',
      'Paypal',
      'Visa',
    ];
    var cardImage = [
      'assets/images/Frame 48.png',
      'assets/images/Frame 49.png',
      'assets/images/Frame 50.png',
    ];
    var cardNumber = [
      '        ***** - 0295',
      '        ***** - 0295',
      '        ***** - 0295',
    ];
    return SizedBox(
      height: 390,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectIndex = index;
                });
              },
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cardName[index],
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage(cardImage[index])),
                              Text(cardNumber[index])
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 30,
                      child: selectIndex == index
                          ? Icon(
                              Icons.check_circle,
                              color: Colors.deepOrangeAccent,
                              size: 35,
                            )
                          : SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: cardName.length,
      ),
    );
  }

  Widget appbar() {
    var _mediaQuey = MediaQuery.of(context);
    return Container(
      height: _mediaQuey.size.height * 0.096,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
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
    );
  }
}

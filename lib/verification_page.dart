import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 202.9,
                  ),
                  Container(
                    width: double.infinity,
                    height: 632,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 30, left: 20),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Verification',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'We have sent a code to your email',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Resend',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.deepOrangeAccent),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CODE',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text('50sec')
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width: 60,
                                  height: 60,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        )),
                                  )),
                              Container(
                                  width: 60,
                                  height: 60,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        )),
                                  )),
                              Container(
                                  width: 60,
                                  height: 60,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    onChanged: (value) {
                                      if (value.length == 1) {
                                        FocusScope.of(context).nextFocus();
                                      }
                                    },
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        )),
                                  )),
                              Container(
                                  width: 60,
                                  height: 60,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1)
                                    ],
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.black12,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        )),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ), //  Main Column.....
            ),
          ),
        ],
      ),
    );
  }
}

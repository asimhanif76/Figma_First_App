import 'package:figma_first_project/signup_page2.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();
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
              const SizedBox(
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
                      margin: const EdgeInsets.only(top: 30, left: 20),
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(left: 20),
                        child: const Row(
                          children: [
                            Text(
                              'Have an account?',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Sign in',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.deepOrangeAccent),
                            )
                          ],
                        )),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'EMAIL',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'hello@halallab.co',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 18),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'PASSWORD',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                hintText: '******',
                                hintStyle: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 6),
                      child: Row(
                        children: [
                          check_box(),
                          Text(
                            'I agree to the',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            ' Terms of Services ',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                          Text('and ', style: TextStyle(fontSize: 13)),
                          Text(
                            'Privacy Policy',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 75,
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
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage2(),
                                  ));
                            },
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
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      'or sign in via',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: Image.asset('assets/images/Google.png'),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: Image.asset('assets/images/Facbook.png'),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: CircleAvatar(
                            backgroundColor: Colors.black12,
                            child: Image.asset('assets/images/Apple.png'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ), // Main Column.....
      ],
    ));
  }
}

class check_box extends StatefulWidget {
  const check_box({super.key});

  @override
  State<check_box> createState() => _check_boxState();
}

class _check_boxState extends State<check_box> {
  bool ischeck = true;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.deepOrangeAccent,
      value: ischeck,
      onChanged: (value) {
        setState(() {
          ischeck = value!;
        });
      },
    );
  }
}

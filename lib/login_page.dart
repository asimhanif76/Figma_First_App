import 'package:figma_first_project/forgot_password_page.dart';
import 'package:figma_first_project/home_page.dart';
import 'package:figma_first_project/onboarding_page_3.dart';
import 'package:figma_first_project/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email_Controller = TextEditingController();
  var PassWord_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image624.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(top: 34, left: 15),
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateColor.transparent,
                    iconColor: WidgetStateProperty.all(Colors.white)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnboardingPage3(),
                      ));
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                )),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 252.9,
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
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 22.0, top: 26),
                              child: Row(
                                children: [
                                  Text(
                                    "Let's you Sign in",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 22),
                              child: Row(
                                children: [
                                  Text(
                                    "New Here?",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SignupPage(),
                                          ));
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: Text('EMAIL',
                              style: TextStyle(color: Colors.grey))),
                      Container(
                          width: 350,
                          child: TextField(
                            controller: email_Controller,
                            decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.check_outlined,
                                  color: Colors.deepOrangeAccent,
                                ),
                                hintText: 'hello@halallab.co',
                                border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.deepOrangeAccent))),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 20),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'PASSWORD',
                            style: TextStyle(color: Colors.grey),
                          )),
                      Container(
                          width: 350,
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            controller: PassWord_Controller,
                            decoration: InputDecoration(
                              hintText: '******',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            alignment: Alignment.topLeft,
                            child: switch_button(),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            width: 87,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return ForgotPasswordPage();
                                  },
                                ));
                              },
                              child: Text("Forgot Password?")),
                        ],
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
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return HomePage();
                                  },
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
          ),
        ],
      ),
    );
  }
}

class switch_button extends StatefulWidget {
  const switch_button({super.key});

  @override
  State<switch_button> createState() => _switch_buttonState();
}

class _switch_buttonState extends State<switch_button> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: Switch(
        activeTrackColor: Colors.deepOrangeAccent,
        thumbColor: WidgetStatePropertyAll(Colors.white),
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            isSwitched = value;
          });
        },
      ),
    );
  }
}

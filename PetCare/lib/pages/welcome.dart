/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:pet_care/pages/login.dart';
import 'package:pet_care/widget/text_btn.dart';
import '../components/styles.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return Container(
            color: appColor,
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 52),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Welcome \n to ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bold',
                          fontSize: 40),
                      children: [
                        TextSpan(
                          text: 'Pet Care',
                          style: TextStyle(
                              color: appColor3,
                              fontFamily: 'bold',
                              fontSize: 40),
                        ),
                      ]),
                ),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.facebook, color: appColor, size: 30.0),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: appColorDark,
                          shadowColor: appColor,
                          elevation: 3,
                          shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                        ),
                        label: RichText(
                          text: TextSpan(
                              text: 'Continue with ',
                              style: TextStyle(color: appColor, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: 'Facebook',
                                    style: TextStyle(
                                        color: appColor,
                                        fontFamily: 'bold',
                                        fontSize: 14)),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: ImageIcon(AssetImage('assets/images/google.png'),
                            color: appColor),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: appColorDark,
                          shadowColor: appColor,
                          elevation: 3,
                          shape: (RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                        ),
                        label: RichText(
                          text: TextSpan(
                              text: 'Continue with ',
                              style: TextStyle(color: appColor, fontSize: 14),
                              children: [
                                TextSpan(
                                    text: 'Google',
                                    style: TextStyle(
                                        color: appColor,
                                        fontFamily: 'bold',
                                        fontSize: 14)),
                              ]),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      child: OutlinedButton(
                        child: Text("Register with Email",
                            style: TextStyle(color: Colors.white)),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(14),
                          side: BorderSide(
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.transparent,
                          primary: Colors.black54,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an account?",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    MyTextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        colors: Colors.white,
                        text: "Sign In")
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

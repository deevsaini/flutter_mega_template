/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/home.dart';
import 'package:salon2/pages/tabs.dart';
import '../components/styles.dart' as style;

class Verification extends StatefulWidget {
  static const String id = 'Verification';

  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'Groomy',
                    style: TextStyle(
                        fontFamily: "bold",
                        color: style.appColor,
                        fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'Stylist',
                    style: TextStyle(
                        fontFamily: "bold",
                        color: style.appColor,
                        fontSize: 32),
                  ),
                ),
                const Divider(
                  height: 40,
                  thickness: 4,
                  indent: 150,
                  endIndent: 150,
                  color: Colors.black12,
                ),
                const Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    'OTP Verification',
                    style: TextStyle(
                        fontFamily: "bold",
                        color: style.appColor,
                        fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: "Enter the OTP sent to ",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "medium",
                              color: Colors.black54)),
                      TextSpan(
                          text: " +91-9876543210",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "bold",
                              color: style.appColor)),
                    ]),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 48),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: false),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    child: const Text("Verify to Proceed"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabsExample()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: style.appColor,
                      onPrimary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Resend Code',
                      style: TextStyle(
                          fontFamily: "medium", color: style.appColor)),
                ),
                Row(
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    )),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      child: const Text(
                        'OR',
                        style: TextStyle(fontSize: 11, color: Colors.grey),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey[300],
                    )),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: _buildimageButton(
                            'assets/images/apple.png', 'Apple'),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildimageButton(
                            'assets/images/google.png', 'Google'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: 'By Continuing. you agree to our \n',
              style: TextStyle(color: Colors.black54, fontSize: 13),
              children: <TextSpan>[
                TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    )),
                TextSpan(text: ' & '),
                TextSpan(
                    text: 'Privacy Policy',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    )),
                TextSpan(text: ' & '),
                TextSpan(
                    text: 'Content Policy',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildimageButton(image, name) {
    return ElevatedButton.icon(
      icon: Image.asset(
        image,
        width: 24,
        height: 24,
      ),
      label: Text(name),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        onPrimary: Colors.black,
        shadowColor: Colors.transparent,
        elevation: 5,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(width: 1, color: Colors.black26)),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 70,
      width: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontFamily: "bold"),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: const InputDecoration(
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: style.appColor),
            ),
          ),
        ),
      ),
    );
  }
}

/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/verification.dart';
import '../components/styles.dart' as style;

class Login extends StatefulWidget {
  static const String id = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Scaffold(
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/salon-banner.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                _buildContent()
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNav(),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      maxChildSize: .8,
      initialChildSize: .7,
      minChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: _buildLoginDesc(),
          ),
        );
      },
    );
  }

  Widget _buildLoginDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Sign in with mobile',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: style.appColor,
                    fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: Text(
                'We will send one time password for into login',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(15)),
                  prefix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(
                      'assets/images/india.png',
                      width: 20,
                      height: 15,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black26),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: ElevatedButton(
                child: const Text("Get OTP",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Verification()));
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
            const SizedBox(height: 20),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey[300],
                )),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:
                        _buildimageButton('assets/images/apple.png', 'Apple'),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child:
                        _buildimageButton('assets/images/google.png', 'Google'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNav() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'By Continuing. you agree to our \n',
          style: TextStyle(
              color: Colors.black54, fontSize: 13, fontFamily: "regular"),
          children: <TextSpan>[
            TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "regular",
                  decoration: TextDecoration.underline,
                )),
            TextSpan(text: ' & '),
            TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "regular",
                  decoration: TextDecoration.underline,
                )),
            TextSpan(text: ' & '),
            TextSpan(
                text: 'Content Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "regular",
                  decoration: TextDecoration.underline,
                )),
          ],
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
}

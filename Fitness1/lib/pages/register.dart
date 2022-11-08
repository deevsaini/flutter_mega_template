/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/completeProfile.dart';
import 'package:fitness/pages/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class register extends StatefulWidget {
  register({Key? key}) : super(key: key);

  static const String page_id = "Register";

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.only(bottom: 10, top: 40),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Hey there,'),
                Text(
                  'Create an Account',
                  style: style.headText(),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: style.simpleInputIconText(
                    'First Name',
                    Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: style.simpleInputIconText(
                    'Last Name',
                    Icon(Icons.person_outline),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: style.simpleInputIconText(
                    'Email',
                    Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: style.simpleInputIconText(
                    'Password',
                    Icon(Icons.lock_outline),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      activeColor: style.appColor,
                      value: false,
                      onChanged: (bool) {
                        setState(() {});
                      },
                    ),
                    Text(
                      'By continuing you accept our \n privacy Policy and  Terms of Use',
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.login),
                  label: Text(
                    "Register",
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  style: style.simpleButton(),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                    ),
                    Text(
                      'Or',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.black12),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    signInButtons('assets/images/google.png'),
                    signInButtons('assets/images/facebook.png'),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Login',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: style.secondaryColor,
                            fontSize: 16),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        new completeProfile()));
                          },
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget signInButtons(icon) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(icon, width: 30.0, height: 30.0),
        ),
      ),
    );
  }
}

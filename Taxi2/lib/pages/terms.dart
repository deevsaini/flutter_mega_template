/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/tabs.dart';
import '../components/styles.dart';

class Terms extends StatefulWidget {
  static const String id = 'Terms';

  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.message_outlined, color: appColor, size: 50),
                SizedBox(height: 30),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text:
                            "Check the box to indication are at least 18 years of age agree to the",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                            color: Colors.black54)),
                    TextSpan(
                        text: "Terms and conditions ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                            color: appColor)),
                    TextSpan(
                        text: "and acknowledge the ",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                            color: Colors.black54)),
                    TextSpan(
                        text: "Privacy Policy.",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                            color: appColor)),
                  ]),
                ),
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: appColor,
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: btnText("NEXT"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TabsExample()));
                },
                style: btnStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

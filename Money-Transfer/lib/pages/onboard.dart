/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/welcome.dart';
import '../helper/style.dart' as style;

class OnBoardPage extends StatefulWidget {
    OnBoardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'OnBoard';

    @override
    State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {

    late double deviceHeight;

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            backgroundColor: style.appColor,
            appBar: AppBar(
                backgroundColor: style.appColor,
                elevation: 0,
            ),
            body: Container(
                height: deviceHeight,
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                        Image.asset('assets/images/verified.png', width: 200),
                        SizedBox(height: 40),
                        Text('Meela',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'semi-bold',
                                color: Colors.white
                            ),
                        ),
                        SizedBox(height: 16),
                        Text('Bank, finance and Wallet UI Kit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white
                            ),
                        ),
                        SizedBox(height: 40),
                        Container(
                            width: 270,
                            margin: EdgeInsets.only(bottom: 24),
                            child: ElevatedButton(
                              onPressed: () {
                                  Navigator.push(context, new MaterialPageRoute(
                                      builder: (context) => new WelcomePage())
                                  );
                              },
                              child: Text('Let\'s Get Started Now'),
                              style: simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    simpleButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(16)
              ),
            ),
            textStyle: TextStyle(
                fontFamily: 'medium',
                fontSize: 15
            ),
            primary: Colors.white,
            onPrimary: style.appColor
        );
    }
}
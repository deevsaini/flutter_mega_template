/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/email.dart';
import '../helper/style.dart' as style;

class WelcomePage extends StatefulWidget {
    WelcomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Welcome';

    @override
    State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                          Text('Safety and comfort is our concern',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                              ),
                          ),
                          Column(
                              children: [
                                  Text('Welcome!',
                                      style: TextStyle(
                                          fontSize: 22,
                                      ),
                                  ),
                                  SizedBox(height: 16),

                                  SizedBox(
                                      width: 250,
                                      child: _buildButton(),
                                  ),
                                  SizedBox(height: 20),

                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                          Icon(Icons.call, color: Colors.grey, size: 18),
                                          SizedBox(width: 4),
                                          Text('2 588 588',
                                              style: TextStyle(
                                                  color: Colors.grey
                                              ),
                                          ),
                                      ],
                                  ),

                                  SizedBox(height: 20),

                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'Language: ',
                                          style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'regular'),
                                          children: <TextSpan>[
                                              TextSpan(text: 'English', style: TextStyle(color: Colors.black)),
                                          ],
                                      ),
                                  )
                              ],
                          ),
                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildButton() {
        return ElevatedButton(
            onPressed: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new EmailPage())
                );
            },
            style: style.roundButton(),
            child: Text('Go!'.toUpperCase(),
                style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'medium',
                ),
            ),
        );
    }


}
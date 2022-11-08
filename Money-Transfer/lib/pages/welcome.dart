/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/login.dart';
import 'package:moneytransaction/pages/register.dart';
import '../helper/style.dart' as style;

class WelcomePage extends StatefulWidget {
    WelcomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Welcome';

    @override
    State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

    late double deviceHeight;

    List<Item> slides = <Item>[
        Item(1, 'assets/images/secured-loan.png', 'Encrypted','Our new encrypted process makes \n it more secure between you and \n your bank'),
        Item(2, 'assets/images/magic-wand.png', 'Easy to Use','Manage your bank account, \n financial transaction. Its all \n easy like never before '),
        Item(3, 'assets/images/shield.png', 'Fast & Secure','Don\'t worry about 3rd Party \n Hacks. It is fast and secure'),
        Item(4, 'assets/images/play-button.png', 'Watch Tutorial','If you are now on this and need \n help, watch this short tutorial clip to \n get Started'),
    ];

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
            ),
            body: Container(
                height: deviceHeight,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: deviceHeight,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 1.0,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      enableInfiniteScroll: false
                  ),
                  items: slides.map((item) => Container(
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                  Image.asset(
                                      item.img,
                                      width: 200,
                                  ),
                                  SizedBox(height: 40),
                                  Text(item.title,
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'semi-bold'
                                      ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(item.text,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                      ),
                                  ),
                                  SizedBox(height: 40),
                                  Container(
                                      width: 270,
                                      margin: EdgeInsets.only(bottom: 24),
                                      child: item.no == 4 ? ElevatedButton(
                                          onPressed: () {
                                              Navigator.push(context, new MaterialPageRoute(
                                                  builder: (context) => new LoginPage())
                                              );
                                          },
                                          child: Text('Let\'s Create an account'),
                                          style: style.simpleButton(),
                                      ) : ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Next'),
                                          style: style.simpleButton(),
                                      ),
                                  ),
                                  item.no == 4 ? TextButton(
                                      onPressed: () {
                                          Navigator.push(context, new MaterialPageRoute(
                                              builder: (context) => new RegisterPage())
                                          );
                                      },
                                      child: Text('Already have an account? Sign In'),
                                      style: TextButton.styleFrom(
                                          primary: Colors.black
                                      ),
                                  ) : TextButton(
                                      onPressed: () {},
                                      child: Text('Skip'),
                                      style: TextButton.styleFrom(
                                          primary: Colors.black
                                      ),
                                  ),
                              ],
                          ),
                      ),
                  )).toList(),
                ),
            ),
        );
    }
}

class Item {
    const Item(this.no, this.img, this.title, this.text);
    final int no;
    final String img;
    final String title;
    final String text;
}
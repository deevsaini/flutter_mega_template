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
import 'package:gofoodflutter/pages/login.dart';
import 'package:gofoodflutter/pages/register.dart';
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
    late double deviceWidth;

    List<Item> slides = <Item>[
        Item('assets/images/1.png', 'Search for favourite food near you', 'Discover the foods from over 3000 restaurants.'),
        Item('assets/images/2.png', 'Fast delivery to your place', 'Fast delivery to your home, office and wherever you are.'),
        Item('assets/images/3.png', 'Tracking shipper on the map', 'Discover the foods from over 3000 restaurants.'),
    ];

    @override
    Widget build(BuildContext context) {
        deviceHeight = MediaQuery.of(context).size.height;
        deviceWidth = MediaQuery.of(context).size.width;
        print(deviceHeight);
        return Scaffold(
              body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return Container(
            height: deviceHeight,
            child: Stack(
                children: [
                    Positioned(
                        top: (deviceHeight-250),
                        left: 0,
                        child: Container(
                            width: deviceWidth,
                            color: style.appColor,
                            height: 250,
                            padding: EdgeInsets.all(16),
                            child: Row(
                                children: [
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                                Navigator.push(context, new MaterialPageRoute(
                                                    builder: (context) => new RegisterPage())
                                                );
                                            },
                                            child: Text('Sign Up'),
                                            style: outlineButton(),
                                        )
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                        child: ElevatedButton(
                                            onPressed: () {
                                                Navigator.push(context, new MaterialPageRoute(
                                                    builder: (context) => new LoginPage())
                                                );
                                            },
                                            child: Text('Sign In'),
                                            style: fillButton(),
                                        )
                                    )
                                ],
                            ),
                        )
                    ),
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        height: (deviceHeight-230),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                            )
                        ),
                        child: CarouselSlider(
                            options: CarouselOptions(
                                height: (deviceHeight-230),
                                autoPlay: true,
                                enlargeCenterPage: false,
                                viewportFraction: 1.0,
                                enlargeStrategy: CenterPageEnlargeStrategy.height,
                            ),
                            items: [
                                Container(
                                    height: (deviceHeight-230),
                                    width: double.infinity,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Image.asset('assets/images/1.png'),
                                            _buildBoldLabel('Search for favourite \n food near you'),
                                            SizedBox(height: 20),
                                            _buildSmallLabel('Discover the foods from over \n 3000 restaurants.'),
                                        ],
                                    ),
                                ),
                                Container(
                                    height: (deviceHeight-230),
                                    width: double.infinity,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Image.asset('assets/images/2.png'),
                                            _buildBoldLabel('Fast delivery \n to your place'),
                                            SizedBox(height: 20),
                                            _buildSmallLabel('Fast delivery to your home, \n office and wherever you are.'),
                                        ],
                                    ),
                                ),
                                Container(
                                    height: (deviceHeight-230),
                                    width: double.infinity,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Image.asset('assets/images/3.png'),
                                            _buildBoldLabel('Tracking shipper \n on the map'),
                                            SizedBox(height: 20),
                                            _buildSmallLabel('Discover the foods from over \n 3000 restaurants.'),
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

    Widget _buildBoldLabel(val) {
        return Text('$val',
            textAlign: TextAlign.center,
            style: style.boldTitle()
        );
    }

    Widget _buildSmallLabel(val) {
        return Text('$val',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey
            ),
        );
    }

    outlineButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                    width: 1,
                    color: Colors.white
                )
            ),
            elevation: 0,
            onPrimary: Colors.white,
            primary: Colors.transparent,
            textStyle: buttonText()
        );
    }

    fillButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            elevation: 0,
            onPrimary: style.appColor,
            primary: Colors.white,
            textStyle: buttonText()
        );
    }

    buttonText() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 15,
            letterSpacing: 0.5
        );
    }

}

class Item {
    const Item(this.img, this.title, this.subtitle);
    final String img;
    final String title;
    final String subtitle;
}

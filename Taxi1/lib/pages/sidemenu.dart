/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/book-later.dart';
import 'package:taxibookflutter/pages/emergency-contacts.dart';
import 'package:taxibookflutter/pages/my-trips.dart';
import 'package:taxibookflutter/pages/news-offers.dart';
import 'package:taxibookflutter/pages/payment-method.dart';
import 'package:taxibookflutter/pages/profile.dart';
import 'package:taxibookflutter/pages/rate-card.dart';

class Menu extends StatefulWidget {
    @override
    _MenuState createState() => _MenuState();
}

class _MenuState  extends State<Menu> {

    bool isOpen = false;
    @override

    Widget build(BuildContext context) {
        return _openDrawer(context);
    }

    Widget _openDrawer(context) {
        return Container(
            width: double.infinity,
            child: Drawer(
                child: ListView(
                    physics: ScrollPhysics(),
                    padding: EdgeInsets.all(0),
                    children: <Widget>[
                        SizedBox(height: 60),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Row(
                                children: [
                                    Expanded(
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('Jonh Doe',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily: 'medium'
                                                    ),
                                                ),
                                                Text('9876543212',
                                                  style: TextStyle(
                                                      color: Colors.grey
                                                  ),
                                              ),
                                            ],
                                        )
                                    ),
                                    InkWell(
                                        onTap: () {
                                            Navigator.of(context).pop();
                                        },
                                        child: Icon(Icons.close),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                padding: EdgeInsets.all(0),
                                children: [
                                    ListTile(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new ProfilePage())
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.account_circle_outlined, color: Colors.black),
                                        title: Text('Profile', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return PaymentMethodPage();
                                                }
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.account_balance_wallet_outlined, color: Colors.black),
                                        title: Text('Payment', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return BookLaterPage();
                                                }
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.event_note, color: Colors.black),
                                        title: Text('Book Later', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new MyTripsPage())
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.location_on_outlined, color: Colors.black),
                                        title: Text('My Trips', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new RateCardPage())
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.star_border, color: Colors.black),
                                        title: Text('Rate Card', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new NewsOffersPage())
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.card_giftcard, color: Colors.black),
                                        title: Text('News and Offers', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (BuildContext context) {
                                                  return EmergencyContactsPage();
                                                }
                                            );
                                        },
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.phone_android, color: Colors.black),
                                        title: Text('Emergency Contacts', style: titleLabel()),
                                    ),
                                    ListTile(
                                        onTap: () {},
                                        contentPadding: EdgeInsets.all(0) ,
                                        leading: Icon(Icons.call, color: Colors.black),
                                        title: Text('Help and Support', style: titleLabel()),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 18
        );
    }

}






/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/cardPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/giftCardPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/loginPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/noOrderPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/orderPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/searchProductPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/settingsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/userDetailsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  static const String pageId = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Stack(
        children: [
          _buildProfile(),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 210, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  _buildContent(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/b1.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => settingPage()));
                    },
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child: FittedBox(
                      child: Image.asset('assets/images/b2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Jessi Pham',
              style: TextStyle(
                  fontFamily: 'bold', color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => orderPage()));
                  },
                  child: _buildSecondContentItem(
                      Icon(
                        Icons.pages,
                        color: style.appColor,
                      ),
                      'My Order')),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => noOrderPage()));
                },
                child: _buildSecondContentItem(
                    Icon(
                      Icons.car_rental,
                      color: style.appColor,
                    ),
                    'Premium Delivery'),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => userDetailsPage()));
                  },
                  child: _buildSecondContentItem(
                      Icon(
                        Icons.info,
                        color: style.appColor,
                      ),
                      'My Details')),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => searchProductPage()));
                },
                child: _buildSecondContentItem(
                    Icon(
                      Icons.location_on,
                      color: style.appColor,
                    ),
                    'Address Book'),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cardPage()));
                  },
                  child: _buildSecondContentItem(
                      Icon(
                        Icons.money,
                        color: style.appColor,
                      ),
                      'Payment Methods')),
              _buildSecondContentItem(
                  Icon(
                    Icons.contact_phone,
                    color: style.appColor,
                  ),
                  'Contact Preferences'),
              _buildSecondContentItem(
                  Icon(
                    Icons.account_box,
                    color: style.appColor,
                  ),
                  'Social Account'),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => giftCardPage()));
                },
                child: _buildSecondContentItem(
                    Icon(
                      Icons.card_giftcard,
                      color: style.appColor,
                    ),
                    'Gift Card & Voucher'),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Column(
            children: [
              _buildSecondContentItem(
                  Icon(
                    Icons.help,
                    color: style.appColor,
                  ),
                  'Need help ?'),
              _buildSecondContentItem(
                  Icon(
                    Icons.mobile_friendly,
                    color: style.appColor,
                  ),
                  'Tell us what you think of orders'),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => loginPage()));
          },
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Column(
              children: [
                _buildSecondContentItem(
                    Icon(
                      Icons.logout,
                      color: style.appColor,
                    ),
                    'Sign Out'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondContentItem(icn, txt1) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: icn,
                    ),
                    SizedBox(
                      width: 150,
                      child: Text(
                        '$txt1',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/address-list.dart';
import 'package:bigbasket/pages/edit-profile.dart';
import 'package:bigbasket/pages/orders.dart';
import 'package:bigbasket/pages/reviews.dart';
import 'package:bigbasket/pages/wallets.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ProfilePage extends StatefulWidget {
    ProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Profile';

    @override
    State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

    bool useEmail = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: style.appColor,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
                color: Colors.white,
                size: 30
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Bigbasket'),
            titleTextStyle: style.whitePageTitle(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Center(
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text('My Account'.toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'medium'
                                    ),
                                ),
                            )
                        ),
                        __buildUserContainer(),

                        Container(
                            padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
                            child: Column(
                                children: [
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new OrdersPage())
                                            );
                                        },
                                        child: _buildSingleItem(Icons.access_time, 'My Orders', ''),
                                    ),
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new WalletsPage())
                                            );
                                        },
                                        child: _buildSingleItem(Icons.account_balance_wallet_outlined, 'My Wallet', 'Rs. 0.00'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildSingleItem(Icons.credit_card_outlined, 'My Payments', ''),
                                    ),
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new ReviewsPage())
                                            );
                                        },
                                        child: _buildSingleItem(Icons.star_border, 'My Rating & Reviews', ''),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildSingleItem(Icons.notifications_none, 'Notifications', ''),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildSingleItem(Icons.headphones_outlined, 'Customer Service', ''),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildSingleItem(Icons.card_giftcard_outlined, 'My Gift Card', ''),
                                    ),
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new AddressListPage())
                                            );
                                        },
                                        child: _buildSingleItem(Icons.location_on_outlined, 'My Delivery Address', ''),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildSingleItem(Icons.power_off_outlined, 'Logout', ''),
                                    ),
                                ],
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget __buildUserContainer() {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 251, 138, 106),
                  Color.fromARGB(200, 233, 107, 108)
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
              )
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(100)
                        ),
                        color: Colors.white
                    ),
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jonh Doe',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'medium',
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 3),
                          Text('jonhdoe@gmail.com',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 3),
                          Text('9876543212',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ],
                      )
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => new EditProfilePage())
                      );
                    },
                    child: Icon(Icons.edit, color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 16),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                        Radius.circular(5)
                    )
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: style.appRed),
                    SizedBox(width: 10),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kalanala'),
                            Text('Bhavnagar - 364001'),
                          ],
                        )
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1,
                              color: style.appRed
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(3)
                          )
                      ),
                      child: Text('Change',
                        style: TextStyle(
                            color: style.appRed,
                            fontSize: 14
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
    }

    Widget _buildSingleItem(icn, val, extra) {
        return Container(
            padding: EdgeInsets.only(top: 16, right: 16, bottom: 16),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: (Colors.grey[300])!,
                        width: 1
                    )
                )
            ),
            child: Row(
                children: [
                    Icon(icn, size: 20),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text('$val',
                                style: TextStyle(fontSize: 16),
                            ),
                        ),
                    ),
                    Text('$extra',
                      style: TextStyle(color: style.appColor),
                    )
                ],
            ),
        );
    }

}
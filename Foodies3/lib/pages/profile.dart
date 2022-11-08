/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/addresses.dart';
import 'package:gofoodflutter/pages/edit-profile.dart';
import 'package:gofoodflutter/pages/payment-methods.dart';
import '../helper/style.dart' as style;

class ProfilePage extends StatefulWidget {
    ProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Profile';

    @override
    State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Profile',
                            style: style.boldTitle(),
                        ),
                        SizedBox(height: 16),

                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new EditProfilePage()
                                ));
                            },
                            child: Container(
                                padding: EdgeInsets.all(16),
                                margin: EdgeInsets.only(bottom: 16),
                                decoration:  style.whiteContainer(),
                                child: Row(
                                    children: [
                                        Container(
                                            height: 90,
                                            width: 90,
                                            margin: EdgeInsets.only(right: 16),
                                            decoration: style.roundedImage('assets/images/user1.jpg'),
                                        ),
                                        Expanded(
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text('Fannie Jackson',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontFamily: 'medium'
                                                        ),
                                                    ),
                                                    Text('9876543212',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Colors.grey
                                                        ),
                                                    )
                                                ],
                                            )
                                        ),
                                        Icon(Icons.arrow_forward_ios, color: style.appGreyText, size: 20)
                                    ],
                                ),
                            )
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration:  style.whiteContainer(),
                            child: Column(
                                children: [
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new PaymentMethodPage()
                                            ));
                                        },
                                        child: _buildRow(Icons.credit_card_outlined, 'Payment Methods'),
                                    ),
                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new AddressesPage()
                                            ));
                                        },
                                        child: _buildRow(Icons.location_on_outlined, 'Address'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.local_offer_outlined, 'My Vouchers'),
                                    ),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration:  style.whiteContainer(),
                            child: Column(
                                children: [
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.notifications_none, 'Notification'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.language, 'Language'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.settings_outlined, 'Settings'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.people_outline, 'Invite Friends'),
                                    ),
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.business_center_outlined, 'Support'),
                                    ),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration:  style.whiteContainer(),
                            child: Column(
                                children: [
                                    InkWell(
                                        onTap: () {},
                                        child: _buildRow(Icons.exit_to_app_outlined, 'Log Out'),
                                    ),
                                ],
                            ),
                        )

                    ],
                ),
            ),
        );
    }

    Widget _buildRow(icn, text) {
        return Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
                children: [
                    Icon(icn, color: style.appGreyText),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text('$text',
                                style: TextStyle(
                                    fontSize: 16
                                ),
                            ),
                        )
                    ),
                    Icon(Icons.arrow_forward_ios, color: style.appGreyText, size: 18),
                ],
            ),
        );
    }

}
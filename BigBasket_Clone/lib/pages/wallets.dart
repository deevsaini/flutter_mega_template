/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class WalletsPage extends StatefulWidget {
    WalletsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Wallets';

    @override
    State<WalletsPage> createState() => _WalletsPageState();
}

class _WalletsPageState extends State<WalletsPage> {

    String _current = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackDark,
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
            ),
            leading: IconButton(
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Wallets'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Total Amount Payable',
                                        style: TextStyle(
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    Text('Rs. 200.00'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),

                                ],
                            ),
                        ),
                        Container(
                            margin: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5)
                                )
                            ),
                            child: Column(
                                children: [
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: style.borderBottom(),
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Image.asset('assets/images/paytm.png', width: 35),
                                                SizedBox(width: 10),
                                                _buildMiddleContainer('Paytm', 'Up to Rs.500 CB. Min order Rs.1000. Assured CB of Rs.30. Avail cashback through scratch card on Paytm App.'),
                                                SizedBox(width: 10),
                                                Text('Link',
                                                    style: TextStyle(
                                                        color: style.appRed
                                                    ),
                                                )
                                            ],
                                        ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: style.borderBottom(),
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Image.asset('assets/images/payzapp.png', width: 35),
                                                SizedBox(width: 10),
                                                _buildMiddleContainer('PayZapp', '5% cashback up to Rs.75. Min order Rs.1000. Use code GROCERY on payZapp page'),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Radio(
                                                        value: 'payzapp',
                                                        groupValue: _current,
                                                        onChanged: (e) {
                                                            setState(() {
                                                                _current = 'payzapp';
                                                            });
                                                        },
                                                        activeColor: style.appColor,
                                                    )
                                                )
                                            ],
                                        ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        decoration: style.borderBottom(),
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Image.asset('assets/images/mobi.png', width: 35),
                                                SizedBox(width: 10),
                                                _buildMiddleContainer('Mobikwik', 'Up to 5% cashback. Assured cashback of Rs.40. Minimum order Rs.1200.'),
                                                SizedBox(width: 10),
                                                Text('Link',
                                                    style: TextStyle(
                                                        color: style.appRed
                                                    ),
                                                )
                                            ],
                                        ),
                                    ),
                                    Container(
                                        padding: EdgeInsets.all(16),
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Image.asset('assets/images/ola.png', width: 35),
                                                SizedBox(width: 10),
                                                _buildMiddleContainer('Olamoney', '10% cashback up to 100. Minimum order Rs.500 once on wallet or Postpaid transaction.'),
                                                SizedBox(width: 10),
                                                SizedBox(
                                                    width: 24,
                                                    height: 24,
                                                    child: Radio(
                                                        value: 'olamoney',
                                                        groupValue: _current,
                                                        onChanged: (e) {
                                                            setState(() {
                                                                _current = 'olamoney';
                                                            });
                                                        },
                                                        activeColor: style.appColor,
                                                    )
                                                )
                                            ],
                                        ),
                                    )
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildMiddleContainer(title, detail) {
        return Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('$title',
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 16
                        ),
                    ),
                    SizedBox(height: 8),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Icon(Icons.local_offer, color: style.appColor, size: 16),
                            SizedBox(width: 8),
                            Expanded(
                                child: Text('$detail',
                                    style: TextStyle(
                                        color: style.appColor,
                                        fontSize: 12
                                    ),
                                )
                            ),
                        ],
                    ),
              ],
            )
        );
    }

}
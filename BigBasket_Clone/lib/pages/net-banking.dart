/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/delivery-options.dart';
import 'package:bigbasket/pages/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class NetBankingPage extends StatefulWidget {
    NetBankingPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Net Banking';

    @override
    State<NetBankingPage> createState() => _NetBankingPageState();
}

class _NetBankingPageState extends State<NetBankingPage> {

    int _current = 1;

    List<Item> banks = [
        Item(1, 'assets/images/axis.png', 'Axis Bank'),
        Item(2, 'assets/images/hdfc.png', 'HDFC Bank'),
        Item(3, 'assets/images/icici.png', 'ICICI Netbanking'),
        Item(4, 'assets/images/kotak.png', 'Kotak Mahindra'),
        Item(5, 'assets/images/yes.png', 'Yes Bank'),
        Item(6, 'assets/images/axis.png', 'Axis Bank'),
        Item(7, 'assets/images/hdfc.png', 'HDFC Bank'),
        Item(8, 'assets/images/icici.png', 'ICICI Netbanking'),
        Item(9, 'assets/images/kotak.png', 'Kotak Mahindra'),
        Item(10, 'assets/images/yes.png', 'Yes Bank'),
        Item(11, 'assets/images/axis.png', 'Axis Bank'),
        Item(12, 'assets/images/hdfc.png', 'HDFC Bank'),
        Item(13, 'assets/images/icici.png', 'ICICI Netbanking'),
        Item(14, 'assets/images/kotak.png', 'Kotak Mahindra'),
        Item(15, 'assets/images/yes.png', 'Yes Bank'),
    ];

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
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                    Text('Popular Banks',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    SizedBox(height: 16),

                                    Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                            )
                                        ),
                                        child: Column(
                                            children: [
                                                ListView(
                                                    shrinkWrap: true,
                                                    physics: ScrollPhysics(),
                                                    children: List.generate(banks.sublist(0,5).length, (index) {
                                                        return Container(
                                                            padding: EdgeInsets.all(16),
                                                            decoration: borderBottom(),
                                                            child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                    Image.asset(banks[index].img, width: 40),
                                                                    SizedBox(width: 10),
                                                                    Expanded(
                                                                        child: Text(banks[index].name,
                                                                            style: TextStyle(
                                                                                fontSize: 16
                                                                            ),
                                                                        )
                                                                    ),
                                                                    SizedBox(
                                                                        width: 24,
                                                                        height: 24,
                                                                        child: Radio(
                                                                            value: banks[index].id,
                                                                            groupValue: _current,
                                                                            onChanged: (e) {
                                                                                setState(() {
                                                                                    _current = banks[index].id;
                                                                                });
                                                                            },
                                                                            activeColor: style.appColor,
                                                                        )
                                                                    )
                                                                ],
                                                            ),
                                                        );
                                                    }),
                                                ),
                                            ],
                                        ),
                                    ),

                                    Text('More Banks',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'medium'
                                      ),
                                    ),
                                    SizedBox(height: 16),

                                    TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Search',
                                            filled: true,
                                            fillColor: Colors.white,
                                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                            border: searchBox(),
                                            focusedBorder: searchBox(),
                                            enabledBorder: searchBox()
                                        ),
                                    ),

                                    SizedBox(height: 16),

                                    Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)
                                        )
                                    ),
                                    child: Column(
                                      children: [
                                        ListView(
                                          shrinkWrap: true,
                                          physics: ScrollPhysics(),
                                          children: List.generate(banks.length, (index) {
                                            return Container(
                                              padding: EdgeInsets.all(16),
                                              decoration: borderBottom(),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(banks[index].img, width: 40),
                                                  SizedBox(width: 10),
                                                  Expanded(
                                                      child: Text(banks[index].name,
                                                        style: TextStyle(
                                                            fontSize: 16
                                                        ),
                                                      )
                                                  ),
                                                  SizedBox(
                                                      width: 24,
                                                      height: 24,
                                                      child: Radio(
                                                        value: banks[index].id,
                                                        groupValue: _current,
                                                        onChanged: (e) {
                                                          setState(() {
                                                            _current = banks[index].id;
                                                          });
                                                        },
                                                        activeColor: style.appColor,
                                                      )
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    borderBottom() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }

    searchBox() {
        return OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(30)
        );
    }

}

class Item {
    Item(this.id, this.img, this.name);
    final int id;
    final String img;
    final String name;

}
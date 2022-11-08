/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/choose-account.dart';
import '../helper/style.dart' as style;

class SendMoneyPage extends StatefulWidget {
    SendMoneyPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Send Money';

    @override
    State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {

    String segmentID = 'Bank';

    List<Item> users = <Item>[
        Item('assets/images/user1.jpg', 'Michel'),
        Item('assets/images/user2.jpg', 'Billy'),
        Item('assets/images/user3.jpg', 'Mark'),
        Item('assets/images/user4.jpg', 'James'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Send Money', style: style.pageTitle()),
                        SizedBox(height: 20),
                        Text('Select Option', style: style.simpleText()),
                        SizedBox(height: 20),

                        Row(
                            children: [
                                _buildOptionBox(Icons.account_balance_outlined, 'Bank'),
                                SizedBox(width: 10),
                                _buildOptionBox(Icons.local_offer_outlined,'TopUp'),
                                SizedBox(width: 10),
                                _buildOptionBox(Icons.qr_code_2, 'QR Code'),
                                SizedBox(width: 10),
                                _buildOptionBox(Icons.fmd_good_outlined, 'Nearby')
                            ],
                        ),

                        SizedBox(height: 24),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: style.whiteContainer(),
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Recent Receipts', style: style.simpleText()),
                              SizedBox(height: 20),
                              Container(
                                  height: 110,
                                  width: double.infinity,
                                  child: ListView(
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: List.generate(users.length, (index) {
                                      return _buildSingleUser(users[index]);
                                    }),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                                color: Colors.white
                            ),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Add New Contact', style: style.simpleText()),
                                    SizedBox(height: 20),
                                    TextField(
                                      decoration: InputDecoration(
                                          hintText: 'Search Contacts...',
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          filled: true,
                                          fillColor: Colors.grey[100]
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    ListView(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    children: List.generate(users.length, (index) {
                                      return _buildSimpleUser(users[index]);
                                    }),
                                  ),
                                ],
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildOptionBox(icn, val) {
        return Expanded(
            child: InkWell(
                onTap: () {
                    setState(() {
                        segmentID = val;
                    });
                },
                child: Container(
                    height: 100,
                    decoration: boxContainer('$val'),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Icon(
                                icn,
                                color: segmentID == val ? Colors.white : style.appColor,
                                size: 28,
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 4),
                                child: Text('$val',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'medium',
                                        color: segmentID == val ? Colors.white: Colors.black
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            )
        );
    }

    boxContainer(val) {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            ),
            color: val == segmentID ? style.appColor : Colors.white
        );
    }

    Widget _buildSingleUser(user) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new ChooseAccountPage())
                );
            },
            child: Container(
                margin: EdgeInsets.only(right: 16),
                child: Column(
                    children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: style.roundImage(user.img),
                        ),
                        Text(user.name)
                    ],
                ),
            ),
        );
    }

    Widget _buildSimpleUser(user) {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: bottomBorder(),
            child: Row(
                children: [
                    Expanded(
                        child: Row(
                            children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: style.roundImage(user.img),
                                ),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text('Sir James', style: style.simpleText()),
                                            Text('9876543212',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 13
                                                ),
                                            ),
                                        ],
                                    )
                                )
                            ],
                        )
                    ),
                    Container(
                        width: 90,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Invite'),
                            style: simpleButton(),
                        ),
                    )
                ],
            ),
        );
    }

    bottomBorder() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }

    simpleButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(5)
                ),
            ),
            textStyle: TextStyle(
                fontFamily: 'medium',
                fontSize: 13
            ),
            primary: style.appColor
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}
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

class HelpPage extends StatefulWidget {
    HelpPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Help';

    @override
    State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {

    List<Item> messages = <Item>[
        Item('left', 'Hello Sir, I am your assistant.'),
        Item('left', 'May I help you sir ?'),
        Item('right', 'Hello, I want to know about cards.'),
        Item('right', 'My cards are not working. If you don\'t mind, would you like to help me.'),
        Item('left', 'It will be our pleasure to help you.'),
        Item('left', 'Please provide me details sir.'),
        Item('right', 'Account Type: Gold \nCard No.: **** **** **** 4242 \nCard Holder: Jonh Doe'),
        Item('right', 'These are my card and account details.')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                elevation: 0,
                automaticallyImplyLeading: true,
                title: Container(
                    child: Text('Help & Support', style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'semi-bold',
                        color: Colors.black
                    )),
                ),
                actions: <Widget>[
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.phone),
                    ),
                ],
            ),
            bottomNavigationBar: _buildFooter(),
            body: SingleChildScrollView(
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: messages.map(( Item msg ) {
                            return msg.side == 'left' ? _buildLeftMessage(msg.msg) : _buildRightMessage(msg.msg);
                        }).toList(),
                    ),
                ),
            ),
        );
    }

    Widget _buildLeftMessage(val) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            width: MediaQuery.of(context).size.width - 140,
            child: Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16), 
                        topRight: Radius.circular(16),
                        bottomRight: Radius.circular(16)
                    )
                ),
              child: Text('$val', style: TextStyle(fontSize: 14, color: Colors.white),),
            ),
        );
    }

    Widget _buildRightMessage(val) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width - 140,
                    child: Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                                bottomLeft: Radius.circular(16)
                            )
                        ),
                        child: Text('$val', style: TextStyle(fontSize: 14),),
                    ),
                ),
            ],
        );
    }

    Widget _buildFooter() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Row(
                children: <Widget>[
                    Expanded(
                        child: TextField(
                            decoration: textFieldDecoration(),
                        ),
                    ),
                    SizedBox(width: 16),
                    InkWell(
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: style.appColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            )
                        ),
                        child: Icon(Icons.near_me_rounded, color: Colors.white, size: 24),
                    ),
                ),
                ],
            ),
        );
    }

    textFieldDecoration() {
        return InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: outlineBorder(),
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            hintText: 'Type message here..'
        );
    }

    outlineBorder() {
        return OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: Colors.transparent
            )
        );
    }


}

class Item {
    const Item(this.side, this.msg);
    final String side;
    final String msg;
}
/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/choose-language.dart';
import 'package:hotelbooking/pages/currency-options.dart';
import 'package:hotelbooking/pages/profile-settings.dart';
import '../helper/style.dart' as style;

class SettingsPage extends StatefulWidget {
    SettingsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Settings';

    @override
    State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

    List<Item> settings = <Item> [
        Item('assets/images/money.png', 'Currency Options', '\$-USD'),
        Item('assets/images/comment.png', 'Choose Languages', 'India (English)'),
        Item('assets/images/man.png', 'Profile Settings', 'Michel Jhonson'),
        Item('assets/images/bag.png', 'About Thie App', 'Third Party Licenses'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 247, 247),
            appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Settings'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                )
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(settings.length, (index) {
                                return _buildSingleSettings(settings[index]);
                            }),
                        ),
                        Divider(
                            height: 1,
                            color: Colors.grey,
                        ),
                        SizedBox(height: 20),
                        Text('Version',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'semi-bold',
                                color: style.appColor
                            ),
                        ),
                        SizedBox(height: 8),
                        Text('v.1.0',
                            style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        Text('Thank you for downloading our app, You\'re awesome!',
                            style: TextStyle(fontSize: 16),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleSettings(setting) {
        return InkWell(
            onTap: () {
                if(setting.title == 'Currency Options') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new CurrencyOptionsPage())
                    );
                }
                if(setting.title == 'Choose Languages') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new ChooseLanguagePage())
                    );
                }
                if(setting.title == 'Profile Settings') {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new ProfileSettingsPage())
                    );
                }
            },
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(8)
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 3),
                    )
                  ]
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 130,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [style.appColor, style.appColor2],
                          begin: const FractionalOffset(0.0, 0.0),
                          end: const FractionalOffset(1.0, 0.0),
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        )
                    ),
                    child: Center(
                        child: Image.asset(setting.img, width: 50),
                    ),
                  ),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(setting.title,
                            style: TextStyle(
                                fontSize: 15
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(setting.value,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'semi-bold',
                                color: style.appColor
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
        );
    }

}

class Item {
    Item(this.img, this.title, this.value);
    final String img;
    final String title;
    final String value;
}
import 'package:flutter/cupertino.dart';
/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';

class language extends StatefulWidget {
  language({Key? key}) : super(key: key);

  static const String page_id = "Language";

  @override
  _languageState createState() => _languageState();
}

class _languageState extends State<language> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('Language for music'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What are your preffered languages for music?'),
            SizedBox(
              height: 30,
            ),
            languageContainer('Bengali'),
            languageContainer('English'),
            languageContainer('Gujarati'),
            languageContainer('Hindi'),
            languageContainer('Kannada'),
            languageContainer('Malayalam'),
            languageContainer('Marathi'),
            languageContainer('Punjabi'),
            languageContainer('Tamil'),
            languageContainer('Telugu'),
          ],
        ),
      ),
    );
  }

  Widget languageContainer(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              activeColor: appColor,
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

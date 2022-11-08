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

class spotifyNewsOffers extends StatefulWidget {
  spotifyNewsOffers({Key? key}) : super(key: key);

  static const String page_id = "Spotify News and Offers";

  @override
  _spotifyNewsOffersState createState() => _spotifyNewsOffersState();
}

class _spotifyNewsOffersState extends State<spotifyNewsOffers> {
  bool _switchValue = true;

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
      title: Text('Artist Update'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.local_offer_outlined),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'News, promos and events for you',
                      style: TextStyle(color: Colors.white60),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Where you\'ll receive notifications',
              style: headText(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Push',
                  style: TextStyle(fontSize: 16),
                ),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontSize: 16),
                ),
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
          ],
        ),
      ),
    );
  }
}

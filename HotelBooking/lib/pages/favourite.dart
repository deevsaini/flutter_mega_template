/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/hotel-list.dart';
import 'package:hotelbooking/pages/profile.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import '../helper/style.dart' as style;

class FavouritePage extends StatefulWidget {
    FavouritePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Favourite';

    @override
    State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Favourite Hotels'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return Container(
            padding: EdgeInsets.all(20),
            height: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Image.asset('assets/images/hotel.jpg'),
                    SizedBox(height: 40),
                    Text('No Favourite Hotels Selected',
                        style: TextStyle(
                            fontFamily: 'semi-bold',
                            fontSize: 24
                        ),
                    ),
                    SizedBox(height: 16),
                    Text('Add favourite by taping on heart symbol')
                ],
            ),
        );
    }


}

class Item {
    const Item(this.sign, this.name);
    final String sign;
    final String name;
}
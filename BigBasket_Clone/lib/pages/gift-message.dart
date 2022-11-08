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

class GiftMessagePage extends StatefulWidget {
    GiftMessagePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Gift Message';

    @override
    State<GiftMessagePage> createState() => _GiftMessagePageState();
}

class _GiftMessagePageState extends State<GiftMessagePage> {

    String addTitle = 'Home';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
            bottomNavigationBar: Container(
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                        Navigator.push(context, new MaterialPageRoute(
                            builder: (context) => new DeliveryOptionsPage())
                        );
                    },
                    child: Text('Save & Continue'.toUpperCase()),
                    style: style.blackButton(),
                ),
            ),
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
            title: Text('Details For Gift Message'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        TextField(
                            decoration: style.textInputDecoration('Enter recipient name'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: style.textInputDecoration('Enter your name'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: style.textInputDecoration('Enter message'),
                        ),
                    ],
                ),
            ),
        );
    }

}
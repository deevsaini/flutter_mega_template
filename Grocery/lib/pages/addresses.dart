/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/edit-address.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
import '../helper/style.dart' as style;

class AddressesPage extends StatefulWidget {
    AddressesPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Addresses';

    @override
    State<AddressesPage> createState() => _AddressesPageState();
}

class _AddressesPageState extends State<AddressesPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('My Addresses'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
                actions: [
                    TextButton(
                        onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => new EditAddressPage())
                            );
                        },
                        child: Text('Add'),
                        style: TextButton.styleFrom(
                            primary: style.appColor
                        ),
                    )
                ],
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              shrinkWrap: true,
              children: List.generate([1,2].length, (index) {
                return Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(bottom: 16),
                  decoration: style.shadowContainer(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text('My Home',
                                style: TextStyle(fontSize: 16),
                              )
                          ),
                          index == 0 ?
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                                color: style.appColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(3)
                                )
                            ),
                            child: Text('Primary',
                              style: TextStyle(fontSize: 13,color: Colors.white),
                            ),
                          ) : Container(),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text('1001 Veterans Blvd', style: greyText()),
                      SizedBox(height: 2),
                      Text('Redwood city, CA 94063', style: greyText()),
                    ],
                  ),
                );
              }),
            ),
          ),
        );
    }

    greyText() {
        return TextStyle(
            color: Colors.grey
        );
    }
}
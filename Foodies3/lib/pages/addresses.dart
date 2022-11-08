/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/add-address.dart';
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
                backgroundColor: style.appGrey,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Addresses',style: style.boldTitle()),
                        SizedBox(height: 16),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: [1,2].map((e) {
                                  return _buildSingleAddress();
                            }).toList(),
                        ),

                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new AddAddressPage()
                                ));
                            },
                            child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 241, 248),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8)
                                    ),
                                    border: Border.all(
                                        color: Color.fromARGB(255, 184, 188, 198),
                                        width: 1.5
                                    )
                                ),
                                child: Text('Add New Address',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 184, 188, 198),
                                        fontSize: 16
                                    ),
                                ),
                            )
                        ),

                    ],
                ),
            ),
        );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 24,
            fontFamily: 'semi-bold'
        );
    }

    Widget _buildSingleAddress() {
        return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 16),
            decoration: style.whiteContainer(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('Home',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'medium'
                        ),
                    ),
                    SizedBox(height: 5),
                    Row(
                        children: [
                            Icon(Icons.location_on, color: style.appGreyText, size: 18),
                            SizedBox(width: 8),
                            Expanded(child: Text('76A Eighth Avenue, Andora Mercy, New York City, US.'))
                        ],
                    ),
                    SizedBox(height: 8),
                    Row(
                        children: [
                            Icon(Icons.person, color: style.appGreyText, size: 18),
                            SizedBox(width: 8),
                            Expanded(child: Text('Beatrice Owen', style: greyLabel()))
                        ],
                    ),
                    SizedBox(height: 8),
                    Row(
                        children: [
                            Icon(Icons.call, color: style.appGreyText,size: 18),
                            SizedBox(width: 8),
                            Expanded(child: Text('9876543212', style: greyLabel()))
                        ],
                    )
                ],
            ),
        );
    }

    greyLabel() {
        return TextStyle(
            fontSize: 13,
            color: style.appGreyText
        );
    }

}

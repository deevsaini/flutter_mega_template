/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/delivery-options.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AddAddressPage extends StatefulWidget {
    AddAddressPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Address';

    @override
    State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {

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
                    child: Text('Add Address'.toUpperCase()),
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
            title: Text('Add New Address'),
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

                        Text('Personal Details', style: boldLabel()),
                        Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('Enter First Name'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                      decoration: style.textInputDecoration('Enter First Name'),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 8),
                        TextField(
                            decoration: style.textInputDecoration('*Contact number to say hello'),
                        ),
                        SizedBox(height: 20),
                        Text('Address Details', style: boldLabel()),
                        Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                      decoration: style.textInputDecoration('House No'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('Apartment Name'),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 8),

                        TextField(
                            decoration: style.textInputDecoration('Street details to locate you'),
                        ),
                        SizedBox(height: 8),
                        TextField(
                            decoration: style.textInputDecoration('Landmark for easy reach out'),
                        ),
                        SizedBox(height: 8),
                        TextField(
                            decoration: style.textInputDecoration('Area Details'),
                        ),
                        SizedBox(height: 8),
                        Row(
                            children: [
                                Expanded(
                                    child: TextField(
                                      decoration: style.textInputDecoration('City'),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                      decoration: style.textInputDecoration('*Pincode'),
                                    )
                                ),
                            ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 10),
                            child: Text('Choose nick name for this address'),
                        ),
                        Row(
                            children: [
                                _buildAddressBox('Home'),
                                _buildAddressBox('Office'),
                                _buildAddressBox('Other'),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }

    boldLabel() {
        return TextStyle(
            fontSize: 18,
            fontFamily: 'medium'
        );
    }

    Widget _buildAddressBox(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    addTitle = '$val';
                });
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                margin: EdgeInsets.only(right: 16),
                decoration: nameBox(val),
                child: Text('Home',
                    style: TextStyle(
                        color: val == addTitle ? style.appRed : Colors.black
                    ),
                ),
            )
        );
    }

    nameBox(val) {
        return BoxDecoration(
            border: Border.all(
                width: 1,
                color: val == addTitle ? style.appRed : (Colors.grey[300])!
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }
}
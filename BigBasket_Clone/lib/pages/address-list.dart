/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/add-address.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AddressListPage extends StatefulWidget {
    AddressListPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Address List';

    @override
    State<AddressListPage> createState() => _AddressListPageState();
}

class _AddressListPageState extends State<AddressListPage> {

    List<String> addresses = [
        'Home', 'Office'
    ];
    String _currentAddress = 'Home';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
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
            title: Text('Choose Delivery Address'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
                            color: style.appBackColor,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text('Saved Address'.toUpperCase(),
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 139, 139, 139),
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(context, new MaterialPageRoute(
                                              builder: (context) => new AddAddressPage())
                                          );
                                        },
                                        icon: Icon(Icons.add),
                                        label: Text('Add new Address'.toUpperCase()),
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.all(0),
                                            textStyle: TextStyle(
                                                fontFamily: 'medium'
                                            )
                                        ),
                                    )
                                ],
                            ),
                        ),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(addresses.length, (index) {
                                return Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: style.borderBottom(),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: Padding(
                                                    padding: EdgeInsets.only(top: 4),
                                                    child: Radio(
                                                        value: addresses[index],
                                                        groupValue: _currentAddress,
                                                        onChanged: (e) {
                                                            setState(() {
                                                                _currentAddress = addresses[index];
                                                            });
                                                        },
                                                        activeColor: style.appColor,
                                                    ),
                                                )
                                            ),
                                            SizedBox(width: 16),
                                            Expanded(
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        Text(addresses[index],
                                                            style: TextStyle(
                                                                fontSize: 17,
                                                                fontFamily: 'medium'
                                                            ),
                                                        ),
                                                        Text('Jonh Doe', style: greyLabel()),
                                                        Text('1234, Eva surbhi \n560004, Banglore- 560004', style: greyLabel()),
                                                        Text('Ph: 9876543212', style: greyLabel())
                                                    ],
                                                )
                                            )
                                        ],
                                    ),
                                );
                            }),
                        )
                    ],
                ),
            ),
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 14
        );
    }

}
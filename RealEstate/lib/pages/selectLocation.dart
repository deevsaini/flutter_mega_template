/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';

class selectLocation extends StatefulWidget {
  selectLocation({Key? key}) : super(key: key);

  static const String page_id = "Select Location";

  @override
  State<selectLocation> createState() => _selectLocationState();
}

class _selectLocationState extends State<selectLocation> {
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
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Select Location',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Select your City'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Select your Area'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => accountCreateSuccess()));
            },
            child: Text(
              'Continue',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: greenButton(),
          )
        ],
      ),
    );
  }
}

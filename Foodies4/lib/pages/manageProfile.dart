/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;

class manageProfile extends StatefulWidget {
  manageProfile({Key? key}) : super(key: key);

  static const String page_id = "Manage Profile";

  @override
  _manageProfileState createState() => _manageProfileState();
}

class _manageProfileState extends State<manageProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Save',
              style: TextStyle(color: style.secondaryColor, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
                radius: 50,
              ),
              Positioned(
                bottom: 30,
                right: -10,
                child: CircleAvatar(
                  backgroundColor: style.appColor,
                  radius: 15,
                  child: IconButton(
                    icon: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: style.greyColor,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Jaydeep Hirani'),
                      ),
                    ),
                    Icon(
                      Icons.edit,
                      color: style.greyColor,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                editField(Icons.lock, 'Password'),
                editField(Icons.email_outlined, 'jaydeephirano5@gmail.com'),
                editField(Icons.call_outlined, '+91 9098953669'),
                editField(Icons.location_on_outlined, 'Gujarat,India'),
                editField(Icons.language_outlined, 'English'),
                editField(Icons.male_outlined, 'Male'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget editField(icon, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Icon(
            icon,
            color: style.greyColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(text),
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: style.greyColor,
          )
        ],
      ),
    );
  }
}

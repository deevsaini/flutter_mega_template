/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class EditProfilePage extends StatefulWidget {
    EditProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Edit Profile';

    @override
    State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

    bool check = true;

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
            title: Text('Update profile'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    children: [
                        Container(
                            padding: EdgeInsets.only(left: 12),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.outlineDecoration(),
                            child: Row(
                                children: [
                                    Text('Name', style: greyLabel()),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: TextField(
                                            style: TextStyle(fontSize: 15),
                                            decoration: textInputDecoration('Name'),
                                        ),
                                    )
                                ],
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 12),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.outlineDecoration(),
                            child: Row(
                                children: [
                                    Text('Mobile No', style: greyLabel()),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: TextField(
                                            style: TextStyle(fontSize: 15),
                                            decoration: textInputDecoration('Mobile No'),
                                        ),
                                    )
                                ],
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 12),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: style.outlineDecoration(),
                            child: Row(
                                children: [
                                    Text('Email', style: greyLabel()),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: TextField(
                                          style: TextStyle(fontSize: 15),
                                            decoration: textInputDecoration('Email'),
                                        ),
                                    )
                                ],
                            ),
                        ),

                        Row(
                            children: [
                                SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: Checkbox(
                                        value: check,
                                        activeColor: style.appColor,
                                        onChanged: (bool? val) {
                                            setState(() {
                                                check = !check;
                                            });
                                        },
                                    ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                    child: Text('Send me emails on promotions, offers and service')
                                )
                            ],
                        ),

                    ],
                ),
            ),
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey
        );
    }

    textInputDecoration(val) {
        return InputDecoration(
            hintText: '$val',
            contentPadding: EdgeInsets.all(0),
            border: outlineBorder(),
            focusedBorder: outlineBorder(),
            enabledBorder: outlineBorder(),
            suffixIcon: InkWell(
                onTap: () {},
                child: Icon(Icons.edit, color: Colors.grey),
            )
        );
    }

    outlineBorder() {
        return OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: Colors.transparent
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(0)
            )
        );
    }
    
}
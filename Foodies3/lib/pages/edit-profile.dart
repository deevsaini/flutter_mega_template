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

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                actions: [
                    TextButton(
                        onPressed: () {},
                        child: Text('Save'),
                        style: TextButton.styleFrom(
                            primary: style.appColor
                        ),
                    )
                ],
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                        Container(
                            height: 100,
                            width: 110,
                            margin: EdgeInsets.only(bottom: 30),
                            decoration: style.roundedImage('assets/images/user1.jpg'),
                        ),


                        Container(
                            decoration: style.whiteContainer(),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            margin: EdgeInsets.only(bottom: 16),
                            child: Row(
                                children: [
                                    Expanded(
                                        flex: 4,
                                        child: Text('Full Name')
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: TextField(
                                            decoration: textInputDecoration('Full Name'),
                                        )
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.keyboard_arrow_right, color: style.appGreyText, size: 20)
                                ],
                            ),
                        ),

                        Container(
                            decoration: style.whiteContainer(),
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            margin: EdgeInsets.only(bottom: 16),
                            child: Row(
                                children: [
                                    Expanded(
                                        flex: 4,
                                        child: Text('Password')
                                    ),
                                    Expanded(
                                        flex: 8,
                                        child: TextField(
                                            decoration: textInputDecoration('Password'),
                                        )
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.keyboard_arrow_right, color: style.appGreyText, size: 20)
                                ],
                            ),
                        ),

                      Container(
                          decoration: style.whiteContainer(),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          margin: EdgeInsets.only(bottom: 16),
                          child: Row(
                              children: [
                                  Expanded(
                                      flex: 4,
                                      child: Text('Phone Number')
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: TextField(
                                          decoration: textInputDecoration('Phone Number'),
                                      )
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.keyboard_arrow_right, color: style.appGreyText, size: 20)
                              ],
                          ),
                      ),

                      Container(
                          decoration: style.whiteContainer(),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          margin: EdgeInsets.only(bottom: 16),
                          child: Row(
                              children: [
                                  Expanded(
                                      flex: 4,
                                      child: Text('Email')
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: TextField(
                                          decoration: textInputDecoration('Email'),
                                      )
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.keyboard_arrow_right, color: style.appGreyText, size: 20)
                              ],
                          ),
                      ),

                      Container(
                          decoration: style.whiteContainer(),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          margin: EdgeInsets.only(bottom: 16),
                          child: Row(
                              children: [
                                  Expanded(
                                      flex: 4,
                                      child: Text('Date of Birth')
                                  ),
                                  Expanded(
                                      flex: 8,
                                      child: TextField(
                                          decoration: textInputDecoration('Date of Birth'),
                                      )
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.keyboard_arrow_right, color: style.appGreyText, size: 20)
                              ],
                          ),
                      ),

                    ],
                ),
            ),
        );
    }
    
    textInputDecoration(val) {
        return InputDecoration(
            border: InputBorder.none,
            hintText: '$val',
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
        );
    }

}

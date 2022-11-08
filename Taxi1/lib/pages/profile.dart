/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/email.dart';
import '../helper/style.dart' as style;

class ProfilePage extends StatefulWidget {
    ProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Profile';

    @override
    State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text('Profile',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'medium',
                        color: Colors.black
                    ),
                ),
                centerTitle: true,
                elevation: 0,
            ),
            body: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[


                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: boxBorder(),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                          _buildTitleText('Contact Details'),
                                          SizedBox(height: 16),

                                          Row(
                                              children: [
                                                  Expanded(
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                              Text('Name', style: greyLabel()),
                                                              TextField(
                                                                  style: TextStyle(fontFamily: 'medium'),
                                                                  decoration: textInputDecoration('Name'),
                                                              )
                                                          ],
                                                      )
                                                  ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                              children: [
                                                  Expanded(
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                              Text('Email', style: greyLabel()),
                                                              TextField(
                                                                  style: TextStyle(fontFamily: 'medium'),
                                                                  decoration: textInputDecoration('Email'),
                                                              )
                                                          ],
                                                      )
                                                  ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                              children: [
                                                Expanded(
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            Text('Mobile', style: greyLabel()),
                                                            TextField(
                                                                style: TextStyle(fontFamily: 'medium'),
                                                                decoration: textInputDecoration('Mobile'),
                                                            )
                                                        ],
                                                    )
                                                ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),
                                      ],
                                  ),
                              ),

                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: boxBorder(),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                          _buildTitleText('Security Details'),
                                          SizedBox(height: 16),

                                          Row(
                                              children: [
                                                  Expanded(
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                              Text('Password', style: greyLabel()),
                                                              Text('Change Password', style: blackLabel()),
                                                          ],
                                                      )
                                                  ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),
                                          SizedBox(height: 16),
                                          Row(
                                              children: [
                                                  Expanded(
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                              Text('Mobile', style: greyLabel()),
                                                              Text('Change Security Question', style: blackLabel()),
                                                          ],
                                                      )
                                                  ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),
                                      ],
                                  ),
                              ),

                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 16),
                                  decoration: boxBorder(),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                          _buildTitleText('Language'),
                                          SizedBox(height: 16),

                                          Row(
                                              children: [
                                                  Expanded(
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                              Text('Select Language', style: greyLabel()),
                                                              Text('English', style: blackLabel()),
                                                          ],
                                                      )
                                                  ),
                                                  Icon(Icons.keyboard_arrow_right, color: Colors.grey, size: 30)
                                              ],
                                          ),

                                          SizedBox(height: 16),

                                          Text('Logout',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'medium',
                                                  color: Color.fromARGB(255, 207, 60, 79)
                                              ),
                                          ),
                                      ],
                                  ),
                            ),

                          ],
                    ),
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildTitleText(val) {
        return Text('$val'.toUpperCase(),
            style: greyTitle(),
        );
    }

    greyTitle() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: 'medium'
        );
    }
    
    boxBorder() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: (Colors.grey[200])!,
                    width: 1
                )
            ),
        );
    }

    greyLabel() {
        return TextStyle(
            fontSize: 15,
            fontFamily: 'medium',
            color: Colors.grey
        );
    }

    blackLabel() {
        return TextStyle(
            fontSize: 15,
            fontFamily: 'medium',
        );
    }

    textInputDecoration(val) {
        return InputDecoration(
            hintText: '$val',
            hintStyle: TextStyle(
                fontFamily: 'medium'
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        );
    }

    Widget _buildButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, new MaterialPageRoute(
            builder: (context) => new EmailPage())
        );
      },
      style: style.roundButton(),
      child: Text('Go!'.toUpperCase(),
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'medium',
        ),
      ),
    );
  }

}
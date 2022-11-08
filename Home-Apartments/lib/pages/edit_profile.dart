/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/booking_bill.dart';
import 'package:home/pages/profile.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  int selectID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBtn(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  //  backgroundImage: AssetImage('assets/images/man.png'),
                  backgroundColor: appColor,
                  radius: 36,
                  child: Icon(Icons.camera_alt, color: Colors.white),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1,
                          ),
                          decoration: InputDecoration(
                            hintText: "First Name",
                            fillColor: Colors.white,
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                        Divider(thickness: 1, color: Colors.black12),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            height: 1,
                          ),
                          decoration: InputDecoration(
                            hintText: "Last Name",
                            fillColor: Colors.white,
                            enabledBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildPremiumBtn(),
            SizedBox(height: 16),
            blackBoldText('Basic Information'),
            SizedBox(height: 16),
            blackText("Email Address"),
            textField('Enter email', Icons.check_circle),
            SizedBox(height: 16),
            blackText("Password"),
            textField('Enter password', Icons.remove_red_eye),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBtn() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Expanded(
        child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));
          },
          text: 'Save Information',
        ),
      ),
    );
  }

  Widget _buildPremiumBtn() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          color: appColor,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Icon(
              Icons.workspace_premium,
              color: Colors.white,
              size: 34,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              'Get Premium Account',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}

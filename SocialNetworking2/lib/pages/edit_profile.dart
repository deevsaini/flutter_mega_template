/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/tabs.dart';
import 'package:social_network/widget/elevated_button.dart';
import '../components/styles.dart';

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz, color: Colors.black))
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Edit Profile',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/39.jpg'),
                        radius: 55,
                      ),
                    ),
                    Positioned(
                        bottom: 3,
                        right: 0,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: appColorBtn,
                          child: Icon(Icons.edit_outlined,
                              color: Colors.white, size: 18),
                        )),
                  ],
                ),
                SizedBox(height: 30),
                textField('Your Email'),
                Row(
                  children: [
                    Expanded(child: textField('Phone')),
                    SizedBox(width: 10),
                    Expanded(child: textField('Phone'))
                  ],
                ),
                textField('Phone'),
                SizedBox(height: 30),
                MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TabsExample()));
                    },
                    colors: appColorBtn,
                    text: 'Save changes'),
              ],
            ),
          ),
        ));
  }

  textField(hint) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.black54, fontSize: 12),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: appColor),
          ),
        ),
      ),
    );
  }
}

/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  static const String page_id = "Profile";

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  bool _switchValue = true;

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
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Profile',
        style: style.headText(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Image.asset(
                    'assets/images/drink.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stefani Wong',
                          style: style.mediumText(),
                        ),
                        Text(
                          'Loss a fat program',
                          style: style.simpleText(),
                        )
                      ],
                    ),
                  ),
                ),
                style.elevatedButton('Edit')
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 251, 246, 246),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '180 cm',
                          style: TextStyle(
                              color: style.appColor,
                              fontFamily: 'medium',
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Height'),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '65 kg',
                          style: TextStyle(
                              color: style.appColor,
                              fontFamily: 'medium',
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Weight'),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          '22yo',
                          style: TextStyle(
                              color: style.appColor,
                              fontFamily: 'medium',
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Age'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Account',
                    style: style.headText(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  navigation(Icons.person_outline, 'Personal Data'),
                  navigation(Icons.list_alt_outlined, 'Achievement'),
                  navigation(Icons.history, 'Activity History'),
                  navigation(Icons.bar_chart_outlined, 'Workout Progress'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notification',
                    style: style.headText(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          Icons.notifications_on_outlined,
                          color: style.appColor,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Pop-up Notification',
                            ),
                          ),
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: CupertinoSwitch(
                            value: _switchValue,
                            activeColor: style.secondaryColor,
                            onChanged: (bool value) {
                              setState(() {
                                _switchValue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Other',
                    style: style.headText(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  navigation(Icons.mail_outline, 'Contact Us'),
                  navigation(Icons.privacy_tip_outlined, 'Privacy Policy'),
                  navigation(Icons.settings_outlined, 'Settings'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget navigation(icon, text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: style.appColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                text,
              ),
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

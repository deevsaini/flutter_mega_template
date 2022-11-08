/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/chooseCategory.dart';

class notification extends StatefulWidget {
  notification({Key? key}) : super(key: key);

  static const String page_id = "Notification";

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      appColor,
                      styleColor,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Notification',
                        style: whiteHeadText(),
                      ),
                      Text('')
                    ],
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: _buildMenu(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              notificationContainer(),
              notificationContainer(),
              inviteContainer(),
              notificationContainer(),
              inviteContainer(),
              notificationContainer(),
              notificationContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget notificationContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/images/man.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hardik Gohil',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('Invites you lorem impus amet')
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                '35 minutes ago',
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget inviteContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 1, color: Colors.grey.shade300))),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/images/man.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hardik Gohil',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text('Invites you lorem impus amet')
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                '10 minutes ago',
                style: TextStyle(fontSize: 12),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                    color: appColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => chooseCategory()));
                  },
                  child: Text(
                    'Accept',
                    style: TextStyle(color: styleColor),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

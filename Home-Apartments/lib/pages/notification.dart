/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Notifications extends StatefulWidget {
  static const String id = 'Notifications';

  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Notification', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmark,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldHeading('All Notification'),
                SizedBox(height: 10),
                SearchBox('Search any noti', () {}),
                SizedBox(height: 10),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
                _buildNotiList('assets/images/profile.jpg', 'John Jackob',
                    'You got a agent that help you find your property', '6h22'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotiList(img, name, address, time) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackText(name),
                  SizedBox(height: 5),
                  greyTextSmall(address),
                ],
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text(time,
                    style: TextStyle(color: Colors.black38, fontSize: 10)),
                SizedBox(height: 20),
                Icon(Icons.circle, color: appColor2, size: 10),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

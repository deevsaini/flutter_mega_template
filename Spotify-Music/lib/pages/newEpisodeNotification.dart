/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';

class newEpisodeNotification extends StatefulWidget {
  newEpisodeNotification({Key? key}) : super(key: key);

  static const String page_id = "New Episode Notification";

  @override
  _newEpisodeNotificationState createState() => _newEpisodeNotificationState();
}

class _newEpisodeNotificationState extends State<newEpisodeNotification> {
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
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('New Episode Notification'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_outlined,
              size: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You haven\'t followed any shows yet!',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Follow a show, and we\'ll notify you when a new episode released.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Browse podcasts',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'medium'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

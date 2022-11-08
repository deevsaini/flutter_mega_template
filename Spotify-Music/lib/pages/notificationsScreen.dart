/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/pages/artistUpdate.dart';
import 'package:spotify/pages/concertNotification.dart';
import 'package:spotify/pages/newEpisodeNotification.dart';
import 'package:spotify/pages/newMusic.dart';
import 'package:spotify/pages/playlistUpdate.dart';
import 'package:spotify/pages/productNews.dart';
import 'package:spotify/pages/recommendedMusic.dart';
import 'package:spotify/pages/spotifyNewsOffers.dart';

class notificationsScreen extends StatefulWidget {
  notificationsScreen({Key? key}) : super(key: key);

  static const String page_id = "Notifications";

  @override
  _notificationsScreenState createState() => _notificationsScreenState();
}

class _notificationsScreenState extends State<notificationsScreen> {
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
      title: Text('Notifications'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            mainContainer(Icons.queue_music, 'Recommended Music', 'Push, Email',
                () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => recommendedMusic())));
            }),
            mainContainer(Icons.music_note, 'New Music', 'Push, Email', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => newMusic())));
            }),
            mainContainer(Icons.list, 'Playlist Updates', 'Push, Email', () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => playlistUpdate())));
            }),
            mainContainer(Icons.confirmation_num_outlined,
                'Concert Notifications', 'Push, Email', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => concertNotification())));
            }),
            mainContainer(Icons.person_outline, 'Artist Updates', 'Push, Email',
                () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => artistUpdate())));
            }),
            mainContainer(Icons.message_outlined, 'Product News', 'Push, Email',
                () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => productNews())));
            }),
            mainContainer(Icons.local_offer_outlined, 'Spotify News and Offers',
                'Push, Email', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => spotifyNewsOffers())));
            }),
            mainContainer(Icons.mic_outlined, 'New episode notifications',
                'No shows followed', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => newEpisodeNotification())));
            }),
          ],
        ),
      ),
    );
  }

  Widget mainContainer(icon, text, lable, route) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: route,
        child: Row(
          children: [
            Icon(icon),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                    Text(
                      lable,
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}

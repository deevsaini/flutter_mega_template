/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/helper/style.dart';
import 'package:spotify/pages/aboutRecommendation.dart';
import 'package:spotify/pages/album.dart';
import 'package:spotify/pages/artistDetail.dart';
import 'package:spotify/pages/artistUpdate.dart';
import 'package:spotify/pages/carThing.dart';
import 'package:spotify/pages/chooseArtist.dart';
import 'package:spotify/pages/concertNotification.dart';
import 'package:spotify/pages/credits.dart';
import 'package:spotify/pages/editProfile.dart';
import 'package:spotify/pages/findFriends.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/language.dart';
import 'package:spotify/pages/login.dart';
import 'package:spotify/pages/musicLanguage.dart';
import 'package:spotify/pages/navigationAndOtherapps.dart';
import 'package:spotify/pages/newEpisodeNotification.dart';
import 'package:spotify/pages/newMusic.dart';
import 'package:spotify/pages/notification.dart';
import 'package:spotify/pages/notificationsScreen.dart';
import 'package:spotify/pages/playlistUpdate.dart';
import 'package:spotify/pages/premium.dart';
import 'package:spotify/pages/productNews.dart';
import 'package:spotify/pages/profile.dart';
import 'package:spotify/pages/recentPlayed.dart';
import 'package:spotify/pages/recommendedMusic.dart';
import 'package:spotify/pages/seararchBrowse.dart';
import 'package:spotify/pages/search.dart';
import 'package:spotify/pages/searchPlay.dart';
import 'package:spotify/pages/settings.dart';
import 'package:spotify/pages/signup.dart';
import 'package:spotify/pages/songList.dart';
import 'package:spotify/pages/spotifyNewsOffers.dart';
import 'package:spotify/pages/welcome.dart';
import 'package:spotify/pages/yourLibrary.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Colors.black, // status bar color
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: welcome(),
      routes: {
        welcome.page_id: (context) => welcome(),
        login.page_id: (context) => login(),
        signup.page_id: (context) => signup(),
        musicLanguage.page_id: (context) => musicLanguage(),
        chooseArtist.page_id: (context) => chooseArtist(),
        home.page_id: (context) => home(),
        search.page_id: (context) => search(),
        yourLibrary.page_id: (context) => yourLibrary(),
        premium.page_id: (context) => premium(),
        songList.page_id: (context) => songList(),
        notification.page_id: (context) => notification(),
        artistDetail.page_id: (context) => artistDetail(),
        album.page_id: (context) => album(),
        credits.page_id: (context) => credits(),
        aboutRecommendation.page_id: (context) => aboutRecommendation(),
        recentPlayed.page_id: (context) => recentPlayed(),
        settings.page_id: (context) => settings(),
        profile.page_id: (context) => profile(),
        editProfile.page_id: (context) => editProfile(),
        findFriends.page_id: (context) => findFriends(),
        language.page_id: (context) => language(),
        notificationsScreen.page_id: (context) => notificationsScreen(),
        recommendedMusic.page_id: (context) => recommendedMusic(),
        newMusic.page_id: (context) => newMusic(),
        playlistUpdate.page_id: (context) => playlistUpdate(),
        concertNotification.page_id: (context) => concertNotification(),
        artistUpdate.page_id: (context) => artistUpdate(),
        productNews.page_id: (context) => productNews(),
        spotifyNewsOffers.page_id: (context) => spotifyNewsOffers(),
        newEpisodeNotification.page_id: (context) => newEpisodeNotification(),
        navigationAndOtherapps.page_id: (context) => navigationAndOtherapps(),
        carThing.page_id: (context) => carThing(),
        searchBrowse.page_id: (context) => searchBrowse(),
        searchPlay.page_id: (context) => searchPlay(),
      },
    );
  }
}

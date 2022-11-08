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
import 'package:music/helper/style.dart';
import 'package:music/pages/artistProfile.dart';
import 'package:music/pages/discover.dart';
import 'package:music/pages/favourite.dart';
import 'package:music/pages/forgotpassword.dart';
import 'package:music/pages/gendre.dart';
import 'package:music/pages/home.dart';
import 'package:music/pages/lyrics.dart';
import 'package:music/pages/myLibrary.dart';
import 'package:music/pages/myProfile.dart';
import 'package:music/pages/nowPlaying.dart';
import 'package:music/pages/playlist.dart';
import 'package:music/pages/search.dart';
import 'package:music/pages/setting.dart';
import 'package:music/pages/share.dart';
import 'package:music/pages/signin.dart';
import 'package:music/pages/signup.dart';
import 'package:music/pages/slider.dart';
import 'package:music/pages/welcome.dart';

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
      title: 'Music 1',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        welcome.page_id: (context) => welcome(),
        signin.page_id: (context) => signin(),
        signup.page_id: (context) => signup(),
        forgotPassword.page_id: (context) => forgotPassword(),
        home.page_id: (context) => home(),
        search.page_id: (context) => search(),
        myLibrary.page_id: (context) => myLibrary(),
        favourite.page_id: (context) => favourite(),
        myProfile.page_id: (context) => myProfile(),
        artistProfile.page_id: (context) => artistProfile(),
        nowPlaying.page_id: (context) => nowPlaying(),
        lyrics.page_id: (context) => lyrics(),
        setting.page_id: (context) => setting(),
        gendre.page_id: (context) => gendre(),
        share.page_id: (context) => share(),
        playlist.page_id: (context) => playlist(),
        discover.page_id: (context) => discover(),
      },
    );
  }
}

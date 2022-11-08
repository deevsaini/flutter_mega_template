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
import 'package:prime_video_fluttermarketplace/pages/LanguageWiseMoviePage.dart';
import 'package:prime_video_fluttermarketplace/pages/castingPage.dart';
import 'package:prime_video_fluttermarketplace/pages/downloadPage.dart';
import 'package:prime_video_fluttermarketplace/pages/episodPage.dart';
import 'package:prime_video_fluttermarketplace/pages/findPage.dart';
import 'package:prime_video_fluttermarketplace/pages/forgotPasswordPage.dart';
import 'package:prime_video_fluttermarketplace/pages/hiddenVideosPage.dart';
import 'package:prime_video_fluttermarketplace/pages/homePage.dart';
import 'package:prime_video_fluttermarketplace/pages/loginPage.dart';
import 'package:prime_video_fluttermarketplace/pages/myAccountPage.dart';
import 'package:prime_video_fluttermarketplace/pages/myStuffPage.dart';
import 'package:prime_video_fluttermarketplace/pages/parentalControlPage.dart';
import 'package:prime_video_fluttermarketplace/pages/playMoviesPage.dart';
import 'package:prime_video_fluttermarketplace/pages/registerPage.dart';
import 'package:prime_video_fluttermarketplace/pages/selectLanguagePage.dart';
import 'package:prime_video_fluttermarketplace/pages/settingsPage.dart';
import 'package:prime_video_fluttermarketplace/pages/streamingAndDownloadingPage.dart';
import 'package:prime_video_fluttermarketplace/pages/tabBarPage.dart';
import 'package:prime_video_fluttermarketplace/pages/welcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const prime_video_fluttermarketplace());
}

class prime_video_fluttermarketplace extends StatelessWidget {
  const prime_video_fluttermarketplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Video',
      theme: ThemeData(fontFamily: 'regular'),
      debugShowCheckedModeBanner: false,
      home: welcomePage(),
      routes: {
        welcomePage.pageId: (context) => welcomePage(),
        loginPage.pageId: (context) => loginPage(),
        tabBarPage.pageId: (context) => tabBarPage(),
        downloadPage.pageId: (context) => downloadPage(),
        findPage.pageId: (context) => findPage(),
        forgotPasswordPage.pageId: (context) => forgotPasswordPage(),
        homePage.pageId: (context) => homePage(),
        myAccountPage.pageId: (context) => myAccountPage(),
        myStuffPage.pageId: (context) => myStuffPage(),
        registerPage.pageId: (context) => registerPage(),
        selectLanguagePage.pageId: (context) => selectLanguagePage(),
        settingsPage.pageId: (context) => settingsPage(),
        castingPage.pageId: (context) => castingPage(),
        episodPage.pageId: (context) => episodPage(),
        hiddenVideosPage.pageId: (context) => hiddenVideosPage(),
        languageWisePage.pageId: (context) => languageWisePage(),
        streamingAndDownloading.pageId: (context) => streamingAndDownloading(),
        playMoviesPage.pageId: (context) => playMoviesPage(),
        parentalControlPage.pageId: (context) => parentalControlPage(),

        // total pages = 19
      },
    );
  }
}

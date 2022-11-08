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
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/account.dart';
import 'package:socialnetworking/pages/activities.dart';
import 'package:socialnetworking/pages/addLocation.dart';
import 'package:socialnetworking/pages/createPost.dart';
import 'package:socialnetworking/pages/editProfile.dart';
import 'package:socialnetworking/pages/findFriend.dart';
import 'package:socialnetworking/pages/forgotPassword.dart';
import 'package:socialnetworking/pages/home.dart';
import 'package:socialnetworking/pages/liveChat.dart';
import 'package:socialnetworking/pages/messageDetail.dart';
import 'package:socialnetworking/pages/messages.dart';
import 'package:socialnetworking/pages/notification.dart';
import 'package:socialnetworking/pages/postDetail.dart';
import 'package:socialnetworking/pages/privacyPolicy.dart';
import 'package:socialnetworking/pages/search.dart';
import 'package:socialnetworking/pages/settings.dart';
import 'package:socialnetworking/pages/signin.dart';
import 'package:socialnetworking/pages/signup.dart';
import 'package:socialnetworking/pages/slider.dart';
import 'package:socialnetworking/pages/tabs.dart';
import 'package:socialnetworking/pages/videoCall.dart';
import 'package:socialnetworking/pages/videoDetail.dart';
import 'package:socialnetworking/pages/voiceCall.dart';

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
      title: 'Social Networking 1',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: slider(),
      routes: {
        slider.page_id: (context) => slider(),
        signup.page_id: (context) => signup(),
        signin.page_id: (context) => signin(),
        forgotPassword.page_id: (context) => forgotPassword(),
        tabs.page_id: (context) => tabs(),
        home.page_id: (context) => home(),
        activities.page_id: (context) => activities(),
        messages.page_id: (context) => messages(),
        notification.page_id: (context) => notification(),
        account.page_id: (context) => account(),
        search.page_id: (context) => search(),
        messageDetail.page_id: (context) => messageDetail(),
        voiceCall.page_id: (context) => voiceCall(),
        videoCall.page_id: (context) => videoCall(),
        postDetail.page_id: (context) => postDetail(),
        settings.page_id: (context) => settings(),
        privacyPolicy.page_id: (context) => privacyPolicy(),
        editProfile.page_id: (context) => editProfile(),
        createPost.page_id: (context) => createPost(),
        addLocation.page_id: (context) => addLocation(),
        videoDetail.page_id: (context) => videoDetail(),
        findFriend.page_id: (context) => findFriend(),
        liveChat.page_id: (context) => liveChat(),
      },
    );
  }
}

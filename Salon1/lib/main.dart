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
import 'package:salon1/Pages/AppointmentPage.dart';
import 'package:salon1/Pages/ChatPage.dart';
import 'package:salon1/Pages/DiscoverPage.dart';
import 'package:salon1/Pages/EditProfilePage.dart';
import 'package:salon1/Pages/ForgotPasswordPage.dart';
import 'package:salon1/Pages/InviteFriendPage.dart';
import 'package:salon1/Pages/LoginPage.dart';
import 'package:salon1/Pages/MessagePage.dart';
import 'package:salon1/Pages/NearByPage.dart';
import 'package:salon1/Pages/ProfilePage.dart';
import 'package:salon1/Pages/RegisterPage.dart';
import 'package:salon1/Pages/SpecialistInfoPage.dart';
import 'package:salon1/Pages/TabsBarPage.dart';
import 'package:salon1/Pages/VideoCallPage.dart';
import 'package:salon1/Pages/WelcomePage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
  runApp(const salon1AppCapacitor());
}

class salon1AppCapacitor extends StatelessWidget {
  const salon1AppCapacitor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salon 1',
      theme: ThemeData(fontFamily: 'regular'),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomePage.PageId: (context) => WelcomePage(),
        LoginPage.PageId: (context) => LoginPage(),
        ForgotPasswordPage.PageId: (context) => ForgotPasswordPage(),
        RegisterPage.PageId: (context) => RegisterPage(),
        tabsBarPage.PageId: (context) => tabsBarPage(),
        DiscoverPage.PageId: (context) => DiscoverPage(),
        NearByPage.PageId: (context) => NearByPage(),
        AppointmentPage.PageId: (context) => AppointmentPage(),
        MessagePage.PageId: (context) => MessagePage(),
        ChatPage.PageId: (context) => ChatPage(),
        ProfilePage.PageId: (context) => ProfilePage(),
        VideoCallPage.PageId: (context) => VideoCallPage(),
        EditProfilePage.PageId: (context) => EditProfilePage(),
        InviteFriendPage.PageId: (context) => InviteFriendPage(),
        SpecialistInfoPage.PageId: (context) => SpecialistInfoPage(),
      },
    );
  }
}

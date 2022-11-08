/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness/pages/activityTracker.dart';
import 'package:fitness/pages/addAlarm.dart';
import 'package:fitness/pages/addSchedule.dart';
import 'package:fitness/pages/breakfast.dart';
import 'package:fitness/pages/comparision.dart';
import 'package:fitness/pages/completeProfile.dart';
import 'package:fitness/pages/description.dart';
import 'package:fitness/pages/fullbodyWorkout.dart';
import 'package:fitness/pages/home.dart';
import 'package:fitness/pages/intro.dart';
import 'package:fitness/pages/login.dart';
import 'package:fitness/pages/mealPlanner.dart';
import 'package:fitness/pages/mealSchedule.dart';
import 'package:fitness/pages/navigationScreen.dart';
import 'package:fitness/pages/notification.dart';
import 'package:fitness/pages/profile.dart';
import 'package:fitness/pages/progressPhoto.dart';
import 'package:fitness/pages/recipes.dart';
import 'package:fitness/pages/register.dart';
import 'package:fitness/pages/result.dart';
import 'package:fitness/pages/sleepSchedule.dart';
import 'package:fitness/pages/sleepTracker.dart';
import 'package:fitness/pages/slider.dart';
import 'package:fitness/pages/sucess.dart';
import 'package:fitness/pages/tabs.dart';
import 'package:fitness/pages/welcome.dart';
import 'package:fitness/pages/workoutSchedule.dart';
import 'package:fitness/pages/workoutTracker.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black, // navigation bar color
    statusBarColor: Colors.black, // status bar color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness One',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: appColor,
        fontFamily: 'regular',
      ),
      home: introduction(),
      routes: {
        introduction.page_id: (context) => introduction(),
        sliderScreen.page_id: (context) => sliderScreen(),
        welcome.page__id: (context) => welcome(),
        register.page_id: (context) => register(),
        login.page_id: (context) => login(),
        tabs.page_id: (context) => tabs(),
        homeScreen.page_id: (context) => homeScreen(),
        progressPhoto.page_id: (context) => progressPhoto(),
        navigationScreen.page_id: (context) => navigationScreen(),
        profile.page_id: (context) => profile(),
        mealSchedule.page_id: (context) => mealSchedule(),
        sleepSchedule.page_id: (context) => sleepSchedule(),
        addSchedule.page_id: (context) => addSchedule(),
        addAlarm.page_id: (context) => addAlarm(),
        comparision.page_id: (context) => comparision(),
        notification.page_id: (context) => notification(),
        success.page_id: (context) => success(),
        completeProfile.page_id: (context) => completeProfile(),
        activityTracker.page_id: (context) => activityTracker(),
        workoutSchedule.page_id: (context) => workoutSchedule(),
        sleepTracker.page_id: (context) => sleepTracker(),
        mealPlanner.page_id: (context) => mealPlanner(),
        breakfast.page_id: (context) => breakfast(),
        result.page_id: (context) => result(),
        description.page_id: (context) => description(),
        recipes.page_id: (context) => recipes(),
        workoutTracker.page_id: (context) => workoutTracker(),
        fullbodyWorkout.page_id: (context) => fullbodyWorkout(),
      },
    );
  }
}

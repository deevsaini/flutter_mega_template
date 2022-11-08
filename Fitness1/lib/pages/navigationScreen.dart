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
import 'package:fitness/pages/mealPlanner.dart';
import 'package:fitness/pages/mealSchedule.dart';
import 'package:fitness/pages/notification.dart';
import 'package:fitness/pages/recipes.dart';
import 'package:fitness/pages/result.dart';
import 'package:fitness/pages/sleepSchedule.dart';
import 'package:fitness/pages/sleepTracker.dart';
import 'package:fitness/pages/sucess.dart';
import 'package:fitness/pages/workoutSchedule.dart';
import 'package:fitness/pages/workoutTracker.dart';
import 'package:flutter/material.dart';
import 'package:fitness/helper/style.dart' as style;

class navigationScreen extends StatefulWidget {
  navigationScreen({Key? key}) : super(key: key);

  static const String page_id = "Navigation Screen";

  @override
  _navigationScreenState createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Other Navigation Pages',
        style: style.headText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => activityTracker())));
            }, 'Activity Tracker'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => addAlarm())));
            }, 'Add Alaram'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => addSchedule())));
            }, 'Add Schedule'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => workoutSchedule())));
            }, 'Workout Schedule'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => workoutTracker())));
            }, 'Workout Tracker'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => sleepSchedule())));
            }, 'Sleep Schedule'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => sleepTracker())));
            }, 'Sleep Tracker'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => comparision())));
            }, 'Comparison'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => mealSchedule())));
            }, 'Meal Schedule'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => breakfast())));
            }, 'Breakfast'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => mealPlanner())));
            }, 'Meal Planeer'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => success())));
            }, 'Success'),
            navigateScreen(() {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => result())));
            }, 'Result'),
            navigateScreen(() {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => fullbodyWorkout())));
            }, 'Fullbody Workout'),
          ],
        ),
      ),
    );
  }

  Widget navigateScreen(route, name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: route,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: style.mediumText(),
            ),
            Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}

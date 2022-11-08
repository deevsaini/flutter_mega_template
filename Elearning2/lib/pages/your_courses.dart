/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/course_home.dart';
import '../components/styles.dart';

class YourCourses extends StatefulWidget {
  static const String id = 'YourCourses';

  const YourCourses({Key? key}) : super(key: key);

  @override
  _YourCoursesState createState() => _YourCoursesState();
}

class _YourCoursesState extends State<YourCourses> {
  List<Course> courseList = [
    Course('assets/images/course.png', '\$ 50', 'Left 3 h 20 min', 'Flutter',
        'Advanced mobile app built'),
    Course('assets/images/slide1.png', '\$ 79', '4 h 30 min', 'Crypto Currency',
        'Advanced Betcoin Currncy Technology'),
    Course('assets/images/course.png', '\$ 50', '3 h 30 min', 'Flutter',
        'Advanced mobile app built'),
    Course('assets/images/slide1.png', '\$ 79', '4 h 30 min', 'Crypto Currency',
        'Advanced Betcoin Currncy Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 60,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Your Courses',
          style: TextStyle(color: Colors.black, fontFamily: 'medium'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            ListView(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              children: courseList.map((e) {
                return _buildCourseDetail(context, e);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseDetail(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CourseHome()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: appColorTint,
                image: DecorationImage(
                    image: AssetImage(e.img), fit: BoxFit.fitHeight),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appcolorText(e.time),
                  SizedBox(height: 4),
                  blackHeadingSmall(e.name),
                  SizedBox(height: 4),
                  blackText(e.detail)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Course {
  Course(this.img, this.price, this.time, this.name, this.detail);

  final img;
  final String price;
  final String time;
  final String name;
  final String detail;
}

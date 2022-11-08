/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/topic.dart';
import '../components/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CourseHome extends StatefulWidget {
  static const String id = 'CourseHome';

  const CourseHome({Key? key}) : super(key: key);

  @override
  _CourseHomeState createState() => _CourseHomeState();
}

class _CourseHomeState extends State<CourseHome> {
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
          'Crypto Currency',
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
            _buildCourseVideo(),
            _buildCourseTopic('assets/images/course.png', 'Main Chain', 0.5),
            _buildCourseTopic('assets/images/slide1.png', 'Block Chain', 0.7),
            _buildCourseTopic('assets/images/slide1.png', 'Neuro Robo', 0.7),
            _buildCourseTopic(
                'assets/images/course.png', 'Crypto Technology', 0.2),
          ],
        ),
      ),
    );
  }

  Widget _buildCourseVideo() {
    return GestureDetector(
      onTap: () {},
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
              height: 300,
              decoration: BoxDecoration(
                color: appColorTint,
                image: DecorationImage(
                    image: AssetImage('assets/images/course.png'),
                    fit: BoxFit.fitHeight),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: CircleAvatar(
                        backgroundColor: appColor,
                        radius: 18,
                        child: Icon(Icons.play_arrow,
                            color: Colors.white, size: 24)),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  blackHeadingSmall('Crypto Currency'),
                  SizedBox(height: 8),
                  blackText('Advanced Cryto Technology'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCourseTopic(img, text, progress) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Topic()));
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 8, bottom: 16),
                    child: blackHeadingSmall(text),
                  ),
                  LinearPercentIndicator(
                    lineHeight: 8.0,
                    percent: progress,
                    animation: true,
                    animationDuration: 1200,
                    backgroundColor: appColorTint,
                    progressColor: appColor,
                  ),
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

/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/about_course.dart';
import '../components/styles.dart';

class Courses extends StatefulWidget {
  static const String id = 'Courses';

  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List<Item> categoryList = <Item>[
    Item('#flutter'),
    Item('#ux'),
    Item('#angular'),
    Item('#javascript'),
    Item('#ui'),
    Item('#dart'),
  ];

  List<Course> courseList = [
    Course('assets/images/course.png', '\$ 50', '3 h 30 min', 'Flutter',
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
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            blackText('Hello,'),
            Text(
              'Daenerys Targaryen',
              style: TextStyle(
                  color: Colors.black, fontSize: 26, fontFamily: 'bold'),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
            ),
            onPressed: () {},
          ),
        ],
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
            SearchBox('Search course'),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  blackText('Category:'),
                  Row(
                    children: categoryList.map((e) {
                      return _buildCategory(context, e);
                    }).toList(),
                  ),
                ],
              ),
            ),
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

  Widget _buildCategory(context, e) {
    return GestureDetector(
      onTap: () {
        print('tap');
        setState(() {
          if (categoryList.contains(e)) {
            categoryList.add(e);
          } else {
            categoryList.add(e);
          }
        });
      },
      child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: categoryList.contains(e) ? appColor2 : backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Text(
            e.name,
            style: TextStyle(
                color: categoryList.contains(e) ? Colors.white : Colors.black45,
                fontSize: 12),
          )),
    );
  }

  Widget _buildCourseDetail(context, e) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutCourse()));
      },
      child: Container(
        margin: EdgeInsets.only(top: 16),
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
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 8,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: appColor2,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(e.price,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'medium',
                            fontSize: 14,
                          )),
                    ),
                  ),
                ],
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

class Item {
  const Item(this.name);
  final String name;
}

class Course {
  Course(this.img, this.price, this.time, this.name, this.detail);

  final img;
  final String price;
  final String time;
  final String name;
  final String detail;
}

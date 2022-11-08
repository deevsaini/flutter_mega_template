/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:learning/pages/course_saved.dart';
import 'package:learning/pages/test.dart';
import 'package:learning/widget/elevated_button.dart';
import '../components/styles.dart';
import 'package:flutter/cupertino.dart';

class Topic extends StatefulWidget {
  static const String id = 'Topic';

  const Topic({Key? key}) : super(key: key);

  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  int selectedValue = 0;

  List<Test> testList = [
    Test('assets/images/course.png', 'Quiz 1', 'Block Chain',
        'Lets put your memory on this topic test. Solve tasks and check your knowledge'),
    Test('assets/images/slide1.png', 'Quiz 2', 'Bitcoin network',
        'Lets put your memory on this topic test. Solve tasks and check your knowledge'),
    Test('assets/images/course.png', 'Quiz 3', 'Ethereum',
        'Lets put your memory on this topic test. Solve tasks and check your knowledge'),
    Test('assets/images/slide1.png', 'Quiz 4', 'Ethereum Virtual Machine',
        'Lets put your memory on this topic test. Solve tasks and check your knowledge'),
  ];
  @override
  void initState() {
    super.initState();
  }

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
            centerkHeading('Tags For Headers'),
            greyText('3 of 11 lessons'),
            segmentedControl(),
            Container(
              child: Column(children: [
                if (selectedValue == 0)
                  _buildLessons()
                else if (selectedValue == 1)
                  ListView(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    children: testList.map((e) {
                      return _buildTests(context, e);
                    }).toList(),
                  )
                else if (selectedValue == 2)
                  _buildLessons()
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget segmentedControl() {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 20),
      child: CupertinoSlidingSegmentedControl(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        groupValue: selectedValue,
        backgroundColor: appColorTint,
        thumbColor: appColorTint,
        children: {
          0: buildSegment1(),
          1: buildSegment2(),
          2: buildSegment3(),
        },
        onValueChanged: (i) {
          selectedValue = i.hashCode;
          setState(() {});
        },
      ),
    );
  }

  Widget buildSegment1() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text('Lessons',
            style: TextStyle(
                fontSize: 16,
                color: selectedValue == 0 ? Colors.black : Colors.black38)),
      );

  Widget buildSegment2() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text('Tests',
            style: TextStyle(
                fontSize: 16,
                color: selectedValue == 1 ? Colors.black : Colors.black38)),
      );

  Widget buildSegment3() => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text('Discuss',
            style: TextStyle(
                fontSize: 16,
                color: selectedValue == 2 ? Colors.black : Colors.black38)),
      );

  Widget _buildLessons() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
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
                    child:
                        Icon(Icons.play_arrow, color: Colors.white, size: 24)),
              ),
            ],
          ),
        ),
        blackHeadingSmall('Introduction'),
        SizedBox(height: 8),
        greyBoldText(
            'You can launch a new career in web development today by learning html & css. You dont need a compurer science degree or expesive software. All you need is a computer, a bit of time, alot of determination, and a teacher you trust. Once the form data has been validated on the client-side. It is okay to submit the form. And since we covered validation in the previous article, weare ready to submit! This article looks at what happens when a user submits a form - where does the data go. and how do we handle it when it gets there? we also llok a t some of the security concerns.'),
        SizedBox(height: 40),
        MyElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CourseSaved()));
            },
            text: 'Next')
      ],
    );
  }

  Widget _buildTests(context, e) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(e.img), fit: BoxFit.fitHeight),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                colorText(e.seq),
                SizedBox(height: 4),
                blackHeadingSmall(e.name),
                SizedBox(height: 4),
                greyText(e.detail),
                Container(
                  margin: EdgeInsets.only(bottom: 16, top: 30),
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TestTopic()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      elevation: 0,
                      shape: (RoundedRectangleBorder(
                        side: BorderSide(color: appColor, width: 2),
                        borderRadius: BorderRadius.circular(16),
                      )),
                    ),
                    child: blackHeadingSmall('Begin'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Test {
  Test(this.img, this.seq, this.name, this.detail);

  final img;
  final String seq;
  final String name;
  final String detail;
}
